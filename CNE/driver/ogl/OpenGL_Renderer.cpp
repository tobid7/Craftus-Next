#include "OpenGL_Renderer.hpp"

namespace CNE
{
    GL_Renderer::GL_Renderer()
    {
        gladLoadGL();



    }
    GL_Renderer::~GL_Renderer()
    {

    }
    void GL_Renderer::Render()
    {
        glViewport(0, 0, sizex, sizey);
        glClearColor(clearcol.r, clearcol.g, clearcol.b, clearcol.a);
        glClear(GL_COLOR_BUFFER_BIT);
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