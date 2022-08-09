#include "OpenGL_Renderer.hpp"
#include "API.hpp"
#include <glfw/glfw3.h>

int drawcalls = 0;

int rwidth;
int rheight;

namespace CNi
{
    GL_Renderer::GL_Renderer()
    {   
        #ifndef __SWITCH__
        API_ERROR("LoadingGlad!");
        ver = gladLoadGL(glfwGetProcAddress);
        
        if (ver == 0)
        {
            API_ERROR("Could not load Glad!");
            API_EXIT_PANIC();
        }
        
        #endif
    }
    GL_Renderer::~GL_Renderer()
    {

    }
    void GL_Renderer::Clear()
    {
        glClearColor((GLfloat)clearcol.r/255, (GLfloat)clearcol.g/255, (GLfloat)clearcol.b/255, (GLfloat)clearcol.a/255);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }
    
    std::string GL_Renderer::GetRenderApiName()
    {
        API_ERROR("Getting Version");
        std::string vers = "OpenGL " + std::to_string(GLAD_VERSION_MAJOR(ver)) + "." + std::to_string(GLAD_VERSION_MINOR(ver));
        return vers;
    }
    void GL_Renderer::Render()
    {
        rwidth = sizex;
        rheight = sizey;
        this->Clear();
        glViewport(posx, posy, sizex, sizey);
    }
    
    void GL_Renderer::SetPos(int x, int y)
    {
        posx = x;
        posy = y;
    }
    int GL_Renderer::GetPosX()
    {
        return posx;
    }
    int GL_Renderer::GetPosY()
    {
        return posy;
    }
    void GL_Renderer::SetSize(int x, int y)
    {
        sizex = x;
        sizey = y;
    }
    int GL_Renderer::GetSizeX()
    {
        return sizex;
    }
    int GL_Renderer::GetSizeY()
    {
        return sizey;
    }
    void GL_Renderer::SetClearColor(CNE::Color clcol)
    {
        clearcol = clcol;
    }
    CNE::Color GL_Renderer::GetClearColor()
    {
        return clearcol;
    }
}