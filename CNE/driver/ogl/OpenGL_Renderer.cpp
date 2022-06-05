#include "OpenGL_Renderer.hpp"

int drawcalls = 0;

namespace CNE
{
    GL_Renderer::GL_Renderer()
    {
        gladLoadGL();



    }
    GL_Renderer::~GL_Renderer()
    {

    }
    void GL_Renderer::Clear()
    {
        glClearColor(clearcol.r, clearcol.g, clearcol.b, clearcol.a);
        glClear(GL_COLOR_BUFFER_BIT);
    }
    void GL_Renderer::Render()
    {
        //GL_Renderer::Clear();
        glViewport(posx, posy, sizex, sizey);
        glClearColor(clearcol.r, clearcol.g, clearcol.b, clearcol.a);
        glClear(GL_COLOR_BUFFER_BIT);
        if(m_drawstack_3d.size() > 0) {
            
            //3D
            if (m_drawstack_3d.size() > 0) {

                for (const auto &entry : m_drawstack_3d) { // for every layer
                    for (const auto &robj : entry.second) { // draw every object
                        if (robj.second()) {
                            drawcalls++;
                            robj.first->Draw();
                        }
                    }
                }
                m_drawstack_3d.clear();
            }
        }
        // draw 2d
        if (m_drawstack_2d.size() > 0) {
            if(m_drawstack_2d.size() > 0) {
               // C2D_SceneBegin(m_targetTopLeft->getRenderTarget());

                for(const auto &entry : m_drawstack_2d) { // for every layer
                    for(const auto &robj : entry.second) { // draw every object
                        if (robj.second()) {
                            drawcalls++;
                            robj.first->Draw();
                        }
                    }
                }

                m_drawstack_2d.clear();
            }
        }
        
    }
    void GL_Renderer::Draw(CNE::RObject &t_object)
    {
        if (1 == 0) {
            if(m_drawstack_2d.count(1) > 0) {
                m_drawstack_2d[1].insert(m_drawstack_2d[1].end(), std::make_pair(&t_object, [](){return true;}));
            } else {
                std::vector<std::pair<CNE::RObject*, std::function<bool()>>> newStack;
                newStack.push_back(std::make_pair(&t_object, [](){return true;}));
                m_drawstack_2d.insert(std::make_pair(1, newStack));
            }
        } else {
            if(m_drawstack_3d.count(1) > 0) {
                m_drawstack_3d[1].insert(m_drawstack_3d[1].end(), std::make_pair(&t_object, [](){return true;}));
            } else {
                std::vector<std::pair<CNE::RObject*, std::function<bool()>>> newStack;
                newStack.push_back(std::make_pair(&t_object, [](){return true;}));
                m_drawstack_3d.insert(std::make_pair(1, newStack));
            }
        }
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