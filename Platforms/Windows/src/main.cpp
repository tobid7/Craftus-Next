#include <glad/glad.h>

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

float previousTime;

int fps = 0;

float ratio;
int width, height;

CNE_Renderer renderer;
CNE_Shader lightningShader;
CNE_Shader shader2d;
CNE_Shader lightCubeShader;

static GLuint fs_vao, fs_vbo;

int main(void)
{
    

    /*SCR_WIDTH = window.getSize().x;
    SCR_HEIGHT = window.getSize().y;
    width = window.getSize().x;
    height = window.getSize().y;*/
    
    renderer = CNE_Renderer();
    renderer.SetClearColor(CNE::Color(41, 41, 41, 255));
    lightningShader.Compile(vertMats, fragMats);
    
    shader2d.Compile(vertNX, fragNX);
    lightCubeShader.Compile(vertLightCube, fragLightCube);


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
    
    previousTime = 0;
    int frameCount = 0;
    cam.genViewMat(); // Generate the View matrix
    cam.genProjMat(); // Generate the Projection Matrix
    
    //glfwSetKeyCallback(window, key_callback);
    while (1)
    {
        
        
        cam.genViewMat(); // Generate the View matrix
        cam.genProjMat(); 
        //FPS
        

        float currentTime = 0;
        frameCount++;
        // If a second has passed.
        if ( currentTime - previousTime >= 1.0 )
        {
            title = "Craftus-Next >> FPS: " + std::to_string(frameCount);
            fps = frameCount;

            

            frameCount = 0;
            previousTime = currentTime;

            
        }
        
        renderer.SetSize(width, height);
        renderer.Render();


        cam.setAspectRatio(SCR_WIDTH / SCR_HEIGHT);
        
        //TEST//
        float currentFrame = 0;
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        // input
        // -----
        //processInput(window);

        // render
        // ------
        glEnable(GL_DEPTH_TEST);
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

        
    }
    //glfwDestroyWindow(window);
    //glfwTerminate();
    return 0;
}
