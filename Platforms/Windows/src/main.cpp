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

using namespace std;

constexpr auto TAU = glm::two_pi<float>();

double previousTime;

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
CNE_Shader shader;
CNE_Shader shader2d;

typedef struct
{
    float position[3];
    float texcoord[2];
    float normal[3];
} Vertex2;

static const Vertex2 vertex_list[] =
{
    // First face (PZ)
    // First triangle
    { {-0.5f, -0.5f, +0.5f}, {0.0f, 0.0f}, {0.0f, 0.0f, +1.0f} },
    { {+0.5f, -0.5f, +0.5f}, {1.0f, 0.0f}, {0.0f, 0.0f, +1.0f} },
    { {+0.5f, +0.5f, +0.5f}, {1.0f, 1.0f}, {0.0f, 0.0f, +1.0f} },
    // Second triangle
    { {+0.5f, +0.5f, +0.5f}, {1.0f, 1.0f}, {0.0f, 0.0f, +1.0f} },
    { {-0.5f, +0.5f, +0.5f}, {0.0f, 1.0f}, {0.0f, 0.0f, +1.0f} },
    { {-0.5f, -0.5f, +0.5f}, {0.0f, 0.0f}, {0.0f, 0.0f, +1.0f} },

    // Second face (MZ)
    // First triangle
    { {-0.5f, -0.5f, -0.5f}, {0.0f, 0.0f}, {0.0f, 0.0f, -1.0f} },
    { {-0.5f, +0.5f, -0.5f}, {1.0f, 0.0f}, {0.0f, 0.0f, -1.0f} },
    { {+0.5f, +0.5f, -0.5f}, {1.0f, 1.0f}, {0.0f, 0.0f, -1.0f} },
    // Second triangle
    { {+0.5f, +0.5f, -0.5f}, {1.0f, 1.0f}, {0.0f, 0.0f, -1.0f} },
    { {+0.5f, -0.5f, -0.5f}, {0.0f, 1.0f}, {0.0f, 0.0f, -1.0f} },
    { {-0.5f, -0.5f, -0.5f}, {0.0f, 0.0f}, {0.0f, 0.0f, -1.0f} },

    // Third face (PX)
    // First triangle
    { {+0.5f, -0.5f, -0.5f}, {0.0f, 0.0f}, {+1.0f, 0.0f, 0.0f} },
    { {+0.5f, +0.5f, -0.5f}, {1.0f, 0.0f}, {+1.0f, 0.0f, 0.0f} },
    { {+0.5f, +0.5f, +0.5f}, {1.0f, 1.0f}, {+1.0f, 0.0f, 0.0f} },
    // Second triangle
    { {+0.5f, +0.5f, +0.5f}, {1.0f, 1.0f}, {+1.0f, 0.0f, 0.0f} },
    { {+0.5f, -0.5f, +0.5f}, {0.0f, 1.0f}, {+1.0f, 0.0f, 0.0f} },
    { {+0.5f, -0.5f, -0.5f}, {0.0f, 0.0f}, {+1.0f, 0.0f, 0.0f} },

    // Fourth face (MX)
    // First triangle
    { {-0.5f, -0.5f, -0.5f}, {0.0f, 0.0f}, {-1.0f, 0.0f, 0.0f} },
    { {-0.5f, -0.5f, +0.5f}, {1.0f, 0.0f}, {-1.0f, 0.0f, 0.0f} },
    { {-0.5f, +0.5f, +0.5f}, {1.0f, 1.0f}, {-1.0f, 0.0f, 0.0f} },
    // Second triangle
    { {-0.5f, +0.5f, +0.5f}, {1.0f, 1.0f}, {-1.0f, 0.0f, 0.0f} },
    { {-0.5f, +0.5f, -0.5f}, {0.0f, 1.0f}, {-1.0f, 0.0f, 0.0f} },
    { {-0.5f, -0.5f, -0.5f}, {0.0f, 0.0f}, {-1.0f, 0.0f, 0.0f} },

    // Fifth face (PY)
    // First triangle
    { {-0.5f, +0.5f, -0.5f}, {0.0f, 0.0f}, {0.0f, +1.0f, 0.0f} },
    { {-0.5f, +0.5f, +0.5f}, {1.0f, 0.0f}, {0.0f, +1.0f, 0.0f} },
    { {+0.5f, +0.5f, +0.5f}, {1.0f, 1.0f}, {0.0f, +1.0f, 0.0f} },
    // Second triangle
    { {+0.5f, +0.5f, +0.5f}, {1.0f, 1.0f}, {0.0f, +1.0f, 0.0f} },
    { {+0.5f, +0.5f, -0.5f}, {0.0f, 1.0f}, {0.0f, +1.0f, 0.0f} },
    { {-0.5f, +0.5f, -0.5f}, {0.0f, 0.0f}, {0.0f, +1.0f, 0.0f} },

    // Sixth face (MY)
    // First triangle
    { {-0.5f, -0.5f, -0.5f}, {0.0f, 0.0f}, {0.0f, -1.0f, 0.0f} },
    { {+0.5f, -0.5f, -0.5f}, {1.0f, 0.0f}, {0.0f, -1.0f, 0.0f} },
    { {+0.5f, -0.5f, +0.5f}, {1.0f, 1.0f}, {0.0f, -1.0f, 0.0f} },
    // Second triangle
    { {+0.5f, -0.5f, +0.5f}, {1.0f, 1.0f}, {0.0f, -1.0f, 0.0f} },
    { {-0.5f, -0.5f, +0.5f}, {0.0f, 1.0f}, {0.0f, -1.0f, 0.0f} },
    { {-0.5f, -0.5f, -0.5f}, {0.0f, 0.0f}, {0.0f, -1.0f, 0.0f} },
};

#define vertex_list_count (sizeof(vertex_list)/sizeof(vertex_list[0]))

static GLuint s_vao, s_vbo;
static GLuint fs_vao, fs_vbo;
static GLuint s_tex;

static GLint loc_mdlvMtx, loc_projMtx;
static GLint loc_lightPos, loc_ambient, loc_diffuse, loc_specular, loc_tex_diffuse;

static void sceneUpdate()
{
    glm::mat4 mdlvMtx{1.0};
    mdlvMtx = glm::translate(mdlvMtx, glm::vec3{0.0f, 0.0f, -3.0f});
    mdlvMtx = glm::rotate(mdlvMtx, (float)previousTime * TAU * 0.234375f, glm::vec3{1.0f, 0.0f, 0.0f});
    mdlvMtx = glm::rotate(mdlvMtx, (float)previousTime * TAU * 0.234375f / 2.0f, glm::vec3{0.0f, 1.0f, 0.0f});
    glUniformMatrix4fv(loc_mdlvMtx, 1, GL_FALSE, glm::value_ptr(mdlvMtx));

}


int main(void)
{
    GLFWwindow* window;
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 0;
    shader = CNE_Shader();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    

    window = glfwCreateWindow(1280, 720, "Craftus-Next", NULL, NULL);
    
    /*GLFWimage icons[1];
    unsigned int *wh, *hw;
    lodepng_decode_file(&icons[0].pixels, wh, hw, "res/icon.png", LCT_RGBA, 4);
    icons[0].width = 256;
    icons[0].height = 256;
    glfwSetWindowIcon(window, 1, icons);*/
    if (!window)
    {
        glfwTerminate();
        return 0;
    }
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);
    
    renderer = CNE_Renderer();
    renderer.SetClearColor(CNE::Color(41, 41, 41, 255));
    shader.Compile(vertCube, fragCube);
    
    shader2d.Compile(vertNX, fragNX);
    

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

    shader.Use();
    loc_mdlvMtx = glGetUniformLocation(shader.GetID(), "mdlvMtx");
    loc_projMtx = glGetUniformLocation(shader.GetID(), "projMtx");
    loc_lightPos = glGetUniformLocation(shader.GetID(), "lightPos");
    loc_ambient = glGetUniformLocation(shader.GetID(), "ambient");
    loc_diffuse = glGetUniformLocation(shader.GetID(), "diffuse");
    loc_specular = glGetUniformLocation(shader.GetID(), "specular");
    loc_tex_diffuse = glGetUniformLocation(shader.GetID(), "tex_diffuse");

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    glGenVertexArrays(1, &s_vao);
    glGenBuffers(1, &s_vbo);
    // bind the Vertex Array Object first, then bind and set vertex buffer(s), and then configure vertex attributes(s).
    glBindVertexArray(s_vao);

    glBindBuffer(GL_ARRAY_BUFFER, s_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertex_list), vertex_list, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex2), (void*)offsetof(Vertex2, position));
    glEnableVertexAttribArray(0);

    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex2), (void*)offsetof(Vertex2, texcoord));
    glEnableVertexAttribArray(1);

    glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex2), (void*)offsetof(Vertex2, normal));
    glEnableVertexAttribArray(2);

    // note that this is allowed, the call to glVertexAttribPointer registered VBO as the vertex attribute's bound vertex buffer object so afterwards we can safely unbind
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    // You can unbind the VAO afterwards so other VAO calls won't accidentally modify this VAO, but this rarely happens. Modifying other
    // VAOs requires a call to glBindVertexArray anyways so we generally don't unbind VAOs (nor VBOs) when it's not directly necessary.
    glBindVertexArray(0);

    // Textures
    glGenTextures(1, &s_tex);
    glActiveTexture(GL_TEXTURE0); // activate the texture unit first before binding texture
    glBindTexture(GL_TEXTURE_2D, s_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    int width, height, nchan;
    stbi_set_flip_vertically_on_load(true);
    stbi_uc* img = stbi_load("res/icon.png", &width, &height, &nchan, 4);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, img);
    stbi_image_free(img);

    // Uniforms
    glUseProgram(shader.GetID());
    auto projMtx = glm::perspective(60.0f*TAU/360.0f, (float)width/height, 0.01f, 1000.0f);
    glUniformMatrix4fv(loc_projMtx, 1, GL_FALSE, glm::value_ptr(projMtx));
    glUniform4f(loc_lightPos, 0.0f, 0.0f, 0.5f, 1.0f);
    glUniform3f(loc_ambient, 0.1f, 0.1f, 0.1f);
    glUniform3f(loc_diffuse, 0.4f, 0.4f, 0.4f);
    glUniform4f(loc_specular, 0.5f, 0.5f, 0.5f, 20.0f);
    glUniform1i(loc_tex_diffuse, 0); // texunit 0

    //TEST//

    std::string title;

    previousTime = glfwGetTime();
    int frameCount = 0;

    glfwSetKeyCallback(window, key_callback);
    while (!glfwWindowShouldClose(window))
    {
        //FPS
        double currentTime = glfwGetTime();
        frameCount++;
        // If a second has passed.
        if ( currentTime - previousTime >= 1.0 )
        {
            title = "Craftus-Next >> FPS: " + std::to_string(frameCount);
            // Display the frame count here any way you want.
            glfwSetWindowTitle(window, title.c_str());

            frameCount = 0;
            previousTime = currentTime;
        }
        glfwGetFramebufferSize(window, &width, &height);
        renderer.SetSize(width, height);
        renderer.Render();
        projMtx = glm::perspective(60.0f*TAU/360.0f, (float)width/height, 0.01f, 1000.0f);

        sceneUpdate();
        
        //TEST//
        shader.Use();
        glEnable(GL_DEPTH_TEST);
        glDepthFunc(GL_LESS);
        
        glBindVertexArray(s_vao); 
        glDrawArrays(GL_TRIANGLES, 0, vertex_list_count);
        glDisable(GL_DEPTH_TEST);
        glBindVertexArray(0);
        shader2d.Use();
        glBindVertexArray(fs_vao); 
        glDrawArrays(GL_TRIANGLES, 0, 6);
        glBindVertexArray(0);
        //TEST//
        
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
