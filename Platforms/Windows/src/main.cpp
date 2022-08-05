#include <glad.h>
#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>

 
#include <stdlib.h>
#include <stdio.h>
 
#include <cne.hpp>
#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>

CNE_Renderer renderer;
CNE_Shader draw2d;
//CNE_2DBatch _2dscreen;

float lastTime;
float currentTime;
float deltatime;

float lastFrame = 0.0f;
float currentFrame;
int frameCount;
float fps;

GLFWimage load_icon(std::string path)
{
    GLFWimage image;
    image.pixels = stbi_load(path.c_str(), &image.width, &image.height, 0, 4); //rgba channels
    return image;
}

void unload_icon(GLFWimage image)
{
    stbi_image_free(image.pixels);
}

static void error_callback(int error, const char* description)
{
    fprintf(stderr, "Error: %s\n", description);
}
 
static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, GLFW_TRUE);
}
 
int main(void)
{
    GLFWwindow* window;
    GLuint vertex_buffer, vertex_shader, fragment_shader, program;
    GLint mvp_location, vpos_location, vcol_location;
 
    glfwSetErrorCallback(error_callback);
 
    if (!glfwInit())
        exit(EXIT_FAILURE);
 
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
 
    window = glfwCreateWindow(1280, 720, "Craftus-Next", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }
    //Window Icon
    GLFWimage images[1];
    images[0] = load_icon("icon.png");
    glfwSetWindowIcon(window, 1, images);
    unload_icon(images[0]);

    glfwSetKeyCallback(window, key_callback);
 
    glfwMakeContextCurrent(window);
    
    renderer = CNE_Renderer();
    renderer.SetClearColor(CNE::Color(255, 255, 255, 255));
    //_2dscreen = CNE_2DBatch();

    glfwSwapInterval(1);
    lastTime = glfwGetTime();

    while (!glfwWindowShouldClose(window))
    {
        currentTime = glfwGetTime();
        frameCount++;
        // If a second has passed.
        if ( currentTime - lastTime >= 1.0 )
        {
            std::string title = "Craftus-Next >> FPS: " + std::to_string(frameCount) + " DT: " + std::to_string(deltatime) + "ms";
            fps = frameCount;
            // Display the frame count here any way you want.
            glfwSetWindowTitle(window, title.c_str());

            frameCount = 0;
            lastTime = currentTime;
        }

        float currentFrame = static_cast<float>(glfwGetTime());
        deltatime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        //_2dscreen.AddRect(0, 0, 500, 200, CNE::Color(20, 40, 50, 255));
        
        renderer.Render();
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
 
    glfwDestroyWindow(window);
 
    glfwTerminate();
    exit(EXIT_SUCCESS);
}
 