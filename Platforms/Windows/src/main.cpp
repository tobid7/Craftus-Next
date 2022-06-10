#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "cne.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <iostream>

#include "Shaders.hpp"

// GLM headers
#define GLM_FORCE_PURE
#include <glm/vec3.hpp>
#include <glm/vec4.hpp>
#include <glm/mat4x4.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <glm/gtc/matrix_transform.hpp>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#include <imgui.h>
#include <imgui_impl_opengl3.h>
#include <imgui_impl_glfw.h>

#include "Camera.hpp"

using namespace std;

// settings
unsigned int SCR_WIDTH = 1920;
unsigned int SCR_HEIGHT = 1080;

// camera
CNE_Camera camera(glm::vec3(0.0f, 0.0f, 3.0f));
Camera cam;
float lastX = SCR_WIDTH / 2.0f;
float lastY = SCR_HEIGHT / 2.0f;
bool firstMouse = true;

// timing
float deltaTime = 0.0f; 
float lastFrame = 0.0f;

bool settingsm = false;

// lighting
glm::vec3 lightPos(1.2f, 1.0f, 2.0f);

double previousTime;

int fps = 0;

float ratio;
int width, height;

static void error_callback(int error, const char* description)
{
    fputs(description, stderr);
}
static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, GL_TRUE);
}

CNE_Renderer renderer;
CNE_Shader lightningShader;
CNE_Shader shader2d;
CNE_Shader lightCubeShader;

static GLuint fs_vao, fs_vbo;

static void sceneUpdate()
{

}

void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
    {
        settingsm = !settingsm;
    } 

    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
        camera.Move(FORWARD, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
        camera.Move(BACKWARD, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
        camera.Move(LEFT, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
        camera.Move(RIGHT, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS)
        camera.Move(UP, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS)
        camera.Move(DOWN, deltaTime);
}

void mouse_callback(GLFWwindow* window, double xposIn, double yposIn)
{
    float xpos = static_cast<float>(xposIn);
    float ypos = static_cast<float>(yposIn);

    if (firstMouse)
    {
        lastX = xpos;
        lastY = ypos;
        firstMouse = false;
    }

    float xoffset = xpos - lastX;
    float yoffset = lastY - ypos; // reversed since y-coordinates go from bottom to top

    lastX = xpos;
    lastY = ypos;

    camera.ProcessMouseMovement(xoffset, yoffset);
}

// glfw: whenever the mouse scroll wheel scrolls, this callback is called
// ----------------------------------------------------------------------
void scroll_callback(GLFWwindow* window, double xoffset, double yoffset)
{
    camera.ProcessMouseScroll(static_cast<float>(yoffset));
}

int main(void)
{
    GLFWwindow* window;
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 0;
    lightningShader = CNE_Shader();

    const GLFWvidmode * videomode = glfwGetVideoMode(glfwGetPrimaryMonitor());
    
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_RED_BITS, videomode->redBits);
    glfwWindowHint(GLFW_GREEN_BITS, videomode->greenBits);
    glfwWindowHint(GLFW_BLUE_BITS, videomode->blueBits);
    glfwWindowHint(GLFW_REFRESH_RATE, videomode->refreshRate);
    
    window = glfwCreateWindow(videomode->width, videomode->height, "Craftus-Next", NULL, NULL);
    //glfwSetWindowMonitor(window, glfwGetPrimaryMonitor(), 0, 0, videomode->width, videomode->height, videomode->refreshRate);
    SCR_WIDTH = videomode->width;
    SCR_HEIGHT = videomode->height;
    
    glfwSetWindowPos(window, 0, 0);
    
    if (!window)
    {
        glfwTerminate();
        return 0;
    }
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);
    
    renderer = CNE_Renderer();
    renderer.SetClearColor(CNE::Color(41, 41, 41, 255));
    lightningShader.Compile(vertMats, fragMats);
    
    shader2d.Compile(vertNX, fragNX);
    lightCubeShader.Compile(vertLightCube, fragLightCube);
    ImGui::CreateContext();
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init();
    glfwSetCursorPosCallback(window, mouse_callback);
    glfwSetScrollCallback(window, scroll_callback);


    cam.pos = glm::vec3(10.0f, 10.0f, 8.0f); // Some arbitrary position for the cam
    cam.up = glm::vec3(0.0f, 1.0f, 0.0f); // Set the up vector as Y
    cam.ar = SCR_WIDTH / SCR_HEIGHT; // Set the aspect ratio, window size is 640x480
    cam.angle = sin(45); //65 degrees // Set the field of view angle
    cam.near = 0.1; // Set the near clipping plane distance
    cam.far = 60.0; // Set the far clipping plane distance
    
    

    //TEST//
    struct Vertex
    {
        float position[3];
        float color[3];
    };

    static const Vertex vertices[] =
    {
        { { -0.3f, -0.3f, 0.0f }, { 1.0f, 0.0f, 0.0f } },
        { {  0.3f, -0.3f, 0.0f }, { 0.0f, 1.0f, 0.0f } },
        { {  -0.3f,  0.3f, 0.0f }, { 0.0f, 0.0f, 1.0f } },

        { {  0.3f,  0.3f, 0.0f }, { 0.0f, 0.0f, 0.0f } },
        { {  0.3f, -0.3f, 0.0f }, { 0.0f, 1.0f, 0.0f } },
        { {  -0.3f,  0.3f, 0.0f }, { 0.0f, 0.0f, 1.0f } },
    };

    glGenVertexArrays(1, &fs_vao);
    glGenBuffers(1, &fs_vbo);
    
    glBindVertexArray(fs_vao);

    glBindBuffer(GL_ARRAY_BUFFER, fs_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, position));
    glEnableVertexAttribArray(0);

    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, color));
    glEnableVertexAttribArray(1);
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    glBindVertexArray(0);

    lightningShader.Use();
    glEnable(GL_DEPTH_TEST);

    float vertices2[] = {
        -0.5f, -0.5f, -0.5f,  0.0f,  0.0f, -1.0f,
         0.5f, -0.5f, -0.5f,  0.0f,  0.0f, -1.0f,
         0.5f,  0.5f, -0.5f,  0.0f,  0.0f, -1.0f,
         0.5f,  0.5f, -0.5f,  0.0f,  0.0f, -1.0f,
        -0.5f,  0.5f, -0.5f,  0.0f,  0.0f, -1.0f,
        -0.5f, -0.5f, -0.5f,  0.0f,  0.0f, -1.0f,

        -0.5f, -0.5f,  0.5f,  0.0f,  0.0f,  1.0f,
         0.5f, -0.5f,  0.5f,  0.0f,  0.0f,  1.0f,
         0.5f,  0.5f,  0.5f,  0.0f,  0.0f,  1.0f,
         0.5f,  0.5f,  0.5f,  0.0f,  0.0f,  1.0f,
        -0.5f,  0.5f,  0.5f,  0.0f,  0.0f,  1.0f,
        -0.5f, -0.5f,  0.5f,  0.0f,  0.0f,  1.0f,

        -0.5f,  0.5f,  0.5f, -1.0f,  0.0f,  0.0f,
        -0.5f,  0.5f, -0.5f, -1.0f,  0.0f,  0.0f,
        -0.5f, -0.5f, -0.5f, -1.0f,  0.0f,  0.0f,
        -0.5f, -0.5f, -0.5f, -1.0f,  0.0f,  0.0f,
        -0.5f, -0.5f,  0.5f, -1.0f,  0.0f,  0.0f,
        -0.5f,  0.5f,  0.5f, -1.0f,  0.0f,  0.0f,

         0.5f,  0.5f,  0.5f,  1.0f,  0.0f,  0.0f,
         0.5f,  0.5f, -0.5f,  1.0f,  0.0f,  0.0f,
         0.5f, -0.5f, -0.5f,  1.0f,  0.0f,  0.0f,
         0.5f, -0.5f, -0.5f,  1.0f,  0.0f,  0.0f,
         0.5f, -0.5f,  0.5f,  1.0f,  0.0f,  0.0f,
         0.5f,  0.5f,  0.5f,  1.0f,  0.0f,  0.0f,

        -0.5f, -0.5f, -0.5f,  0.0f, -1.0f,  0.0f,
         0.5f, -0.5f, -0.5f,  0.0f, -1.0f,  0.0f,
         0.5f, -0.5f,  0.5f,  0.0f, -1.0f,  0.0f,
         0.5f, -0.5f,  0.5f,  0.0f, -1.0f,  0.0f,
        -0.5f, -0.5f,  0.5f,  0.0f, -1.0f,  0.0f,
        -0.5f, -0.5f, -0.5f,  0.0f, -1.0f,  0.0f,

        -0.5f,  0.5f, -0.5f,  0.0f,  1.0f,  0.0f,
         0.5f,  0.5f, -0.5f,  0.0f,  1.0f,  0.0f,
         0.5f,  0.5f,  0.5f,  0.0f,  1.0f,  0.0f,
         0.5f,  0.5f,  0.5f,  0.0f,  1.0f,  0.0f,
        -0.5f,  0.5f,  0.5f,  0.0f,  1.0f,  0.0f,
        -0.5f,  0.5f, -0.5f,  0.0f,  1.0f,  0.0f
    };
    // first, configure the cube's VAO (and VBO)
    unsigned int VBO, cubeVAO;
    glGenVertexArrays(1, &cubeVAO);
    glGenBuffers(1, &VBO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices2), vertices2, GL_STATIC_DRAW);

    glBindVertexArray(cubeVAO);

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    // normal attribute
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);


    // second, configure the light's VAO (VBO stays the same; the vertices are the same for the light object which is also a 3D cube)
    unsigned int lightCubeVAO;
    glGenVertexArrays(1, &lightCubeVAO);
    glBindVertexArray(lightCubeVAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    // note that we update the lamp's position attribute's stride to reflect the updated buffer data
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);


    //TEST//

    std::string title;

    previousTime = glfwGetTime();
    int frameCount = 0;
    cam.genViewMat(); // Generate the View matrix
    cam.genProjMat(); // Generate the Projection Matrix

    glfwSetKeyCallback(window, key_callback);
    while (!glfwWindowShouldClose(window))
    {
        cam.genViewMat(); // Generate the View matrix
        cam.genProjMat(); 
        //FPS
        double currentTime = glfwGetTime();
        frameCount++;
        // If a second has passed.
        if ( currentTime - previousTime >= 1.0 )
        {
            title = "Craftus-Next >> FPS: " + std::to_string(frameCount);
            fps = frameCount;
            // Display the frame count here any way you want.
            glfwSetWindowTitle(window, title.c_str());

            frameCount = 0;
            previousTime = currentTime;
        }
        glfwGetFramebufferSize(window, &width, &height);
        renderer.SetSize(width, height);
        renderer.Render();

        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();
        sceneUpdate();
        bool xddd = true;
        if (settingsm) glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
        if (!settingsm) glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

        //ImGui::ShowMetricsWindow(&xddd);
        ImGui::Begin("Debug", &xddd, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove);
        ImGui::SetWindowPos(ImVec2{0, 0});
        ImGui::SetWindowSize(ImVec2{300, 100});
        ImGui::Text("Fps %i", fps);
        ImGui::Text("Res: %i | %i", SCR_WIDTH, SCR_HEIGHT);
        ImGui::Text("OpenGL: %i.%i", GLVersion.major, GLVersion.minor);
        ImGui::Text("Pos: %f, %f, %f", camera.Position.x, camera.Position.y, camera.Position.z);
        ImGui::End();

        cam.setAspectRatio(SCR_WIDTH / SCR_HEIGHT);
        

        /*ImGui::Begin("Settings", &settingsm, ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove);
        ImGui::SetWindowPos(ImVec2{0, 200});
        ImGui::SetWindowSize(ImVec2{400, 200});
        if (ImGui::Button("Close")) glfwSetWindowShouldClose(window, true);
        ImGui::End();*/
        
        //TEST//
        float currentFrame = static_cast<float>(glfwGetTime());
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        // input
        // -----
        processInput(window);

        // render
        // ------
        glEnable(GL_DEPTH_TEST);
        glDisable(GL_CULL_FACE);
        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        cam.setCameraPos(camera.Position);
        cam.setCameraFocus(camera.Front);
        // be sure to activate shader when setting uniforms/drawing objects
        lightningShader.Use();
        lightningShader.setVec3("light.position", lightPos);
        lightningShader.setVec3("viewPos", cam.pos);
        //lightningShader.setVec3("viewPos", glm::vec3(cam.getPositionX(), cam.getPositionY(), cam.getPositionZ()));

        // light properties
        glm::vec3 lightColor;
        lightColor.x = static_cast<float>(/*sin(glfwGetTime() * 2.0)*/0/255);
        lightColor.y = static_cast<float>(/*sin(glfwGetTime() * 0.7)*/0/255);
        lightColor.z = static_cast<float>(/*sin(glfwGetTime() * 1.3)*/255/255);
        glm::vec3 diffuseColor = lightColor   * glm::vec3(0.5f); // decrease the influence
        glm::vec3 ambientColor = diffuseColor * glm::vec3(0.2f); // low influence
        lightningShader.setVec3("light.ambient", ambientColor);
        lightningShader.setVec3("light.diffuse", diffuseColor);
        lightningShader.setVec3("light.specular", 1.0f, 1.0f, 1.0f);

        // material properties
        lightningShader.setVec3("material.ambient", 1.0f, 0.5f, 0.31f);
        lightningShader.setVec3("material.diffuse", 1.0f, 0.5f, 0.31f);
        lightningShader.setVec3("material.specular", 0.5f, 0.5f, 0.5f); // specular lighting doesn't have full effect on this object's material
        lightningShader.setFloat("material.shininess", 32.0f);

        // view/projection transformations
        //cam.view = glm::rotate(cam.view, 0.017453f, glm::vec3(0.0f, 1.0f, 0.0f));
        glm::mat4 projection = /*cam.getProjMat();*/glm::perspective(glm::radians(camera.Fov), (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);
        glm::mat4 view = /*cam.getViewMat();*/camera.GetViewMatrix();
        lightningShader.setMat4("projection", projection);
        lightningShader.setMat4("view", view);

        // world transformation
        glm::mat4 model = glm::mat4(1.0f);
        lightningShader.setMat4("model", model);

        // render the cube
        glBindVertexArray(cubeVAO);
        glDrawArrays(GL_TRIANGLES, 0, 36);


        // also draw the lamp object
        lightCubeShader.Use();
        lightCubeShader.setMat4("projection", projection);
        lightCubeShader.setMat4("view", view);
        model = glm::mat4(1.0f);
        model = glm::translate(model, lightPos);
        model = glm::scale(model, glm::vec3(0.2f)); // a smaller cube
        lightCubeShader.setMat4("model", model);

        glBindVertexArray(lightCubeVAO);
        glDrawArrays(GL_TRIANGLES, 0, 36);

        glDisable(GL_DEPTH_TEST);
        /*shader2d.Use();
        glBindVertexArray(fs_vao); 
        glDrawArrays(GL_TRIANGLES, 0, 6);*/
        //TEST//
        ImGui::Render();
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
