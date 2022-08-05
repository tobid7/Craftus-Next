#include "OpenGL_Renderer.hpp"
#include <OpenGL_RenderContext.hpp>

int drawcalls = 0;

namespace CNE
{
    GL_Renderer::GL_Renderer()
    {   
        #ifndef __SWITCH__
        gladLoadGL();
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
    void GL_Renderer::Render()
    {
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
    void GL_Renderer::SetClearColor(Color clcol)
    {
        clearcol = clcol;
    }
    Color GL_Renderer::GetClearColor()
    {
        return clearcol;
    }
}