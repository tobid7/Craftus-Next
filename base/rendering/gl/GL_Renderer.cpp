#include <gl/GL_Renderer.hpp>

namespace Base
{
    ErrorCode GL_Renderer::Init()
    {
        glEnable(GL_DEPTH);

        return 0;
    }
    
    ErrorCode GL_Renderer::Exit()
    {
        return 0;
    }
    
    ErrorCode GL_Renderer::Update()
    {
        return 0;
    }
}