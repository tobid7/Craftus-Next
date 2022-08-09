#include <glad.h>
#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>

 
#include <stdlib.h>
#include <stdio.h>
 
#include <cne.hpp>
#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>
#include <PC_Window.hpp>

float lastTime;
float currentTime;
float deltatime;

float lastFrame = 0.0f;
float currentFrame;
int frameCount;
float fps;

int w, h;

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
    std::ofstream errfile("glfw.txt", std::ios::app);
    errfile << "ERROR: " << description << std::endl;
    errfile.close();
}
 
static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, GLFW_TRUE);
}

void _post_call_callback_default(const char *name, void *funcptr, int len_args, ...) {
    GLenum error_code;
    error_code = glad_glGetError();

    if (error_code != GL_NO_ERROR) {
        fprintf(stderr, "ERROR %d in %s\n", error_code, name);
        std::ofstream errfile("glerrors.txt", std::ios::app);
        errfile << "ERROR: " << std::to_string(error_code) << " " << name << std::endl;
        errfile.close();
    }
}
int main(void)
{
    GLFWwindow* window;

    
    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
    glfwWindowHint(GLFW_TRANSPARENT_FRAMEBUFFER, GLFW_TRUE);


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
    gladSetGLPostCallback((GLADpostcallback)_post_call_callback_default);
    CNi::SetApi(CNi::OPENGL);
    auto ren = CNi::GetRenderer();
    
    glfwSwapInterval(1);
    lastTime = glfwGetTime();
    ren->SetClearColor(CNE::Color(0, 0, 0, 0)); //Transparent
    
    

    while (!glfwWindowShouldClose(window))
    {
        currentTime = glfwGetTime();
        frameCount++;
        // If a second has passed.
        if ( currentTime - lastTime >= 1.0 ) 
        {
            std::string title = "Craftus-Next >> FPS: " + std::to_string(frameCount) + " DT: " + std::to_string(deltatime) + "ms " + ren->GetRenderApiName();
            fps = frameCount;
            // Display the frame count here any way you want.
            glfwSetWindowTitle(window, title.c_str());

            frameCount = 0;
            lastTime = currentTime;
        }

        float currentFrame = static_cast<float>(glfwGetTime());
        deltatime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        glfwGetFramebufferSize(window, &w, &h);
        ren->SetSize(w, h);

        ren->Clear();
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
 
    glfwDestroyWindow(window);
 
    glfwTerminate();
    fclose(stdout);
    exit(EXIT_SUCCESS);
}
 