#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "cne.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <iostream>

#include "Shaders.hpp"

#include "lodepng.h"

using namespace std;

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

static GLuint s_vao, s_vbo;

int main(void)
{
    GLFWwindow* window;
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 0;
    shader = CNE_Shader();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
    //glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    
    renderer.SetClearColor(CNE::Color(51, 76, 76, 255));

    window = glfwCreateWindow(1920, 1080, "Craftus-Next", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return 0;
    }
    glfwMakeContextCurrent(window);
    
    GLFWimage icons[1];
    unsigned int *wh, *hw;
    lodepng_decode_file(&icons[0].pixels, wh, hw, "res/icon.png", LCT_RGBA, 4);
    glfwSetWindowIcon(window, 1, icons);

    renderer = CNE_Renderer();
    shader.Compile(vertBasic, fragBasic);
    shader2d.Compile(vert2D_Basic, fragBasic);
    

    //TEST//
    struct Vertex
    {
        float position[3];
        float color[3];
    };

    static const Vertex vertices[] =
    {
        { { -0.5f, -0.5f, 0.0f }, { 1.0f, 0.0f, 0.0f } },
        { {  0.5f, -0.5f, 0.0f }, { 0.0f, 1.0f, 0.0f } },
        { {  0.0f,  0.5f, 0.0f }, { 0.0f, 0.0f, 1.0f } },
    };
    glGenVertexArrays(1, &s_vao);
    glGenBuffers(1, &s_vbo);
    
    glBindVertexArray(s_vao);

    glBindBuffer(GL_ARRAY_BUFFER, s_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, position));
    glEnableVertexAttribArray(0);

    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, color));
    glEnableVertexAttribArray(1);
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    glBindVertexArray(0);
    //TEST//

    std::string title;

    double previousTime = glfwGetTime();
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
            title = "Craftus-Next FPS: " + std::to_string(frameCount);
            // Display the frame count here any way you want.
            glfwSetWindowTitle(window, title.c_str());

            frameCount = 0;
            previousTime = currentTime;
        }


        shader.Use();
        glfwGetFramebufferSize(window, &width, &height);
        renderer.SetSize(width, height);
        renderer.Render();
        //TEST//
        glBindVertexArray(s_vao); 
        glDrawArrays(GL_TRIANGLES, 0, 3);
        //TEST//
        
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}