#include <OpenGL_RenderContext.hpp>

CNE::GL_RenderContext::GL_RenderContext(CNE::GL_Shader& t_shader)
{
    m_cshader = t_shader;

}

int CNE::GL_RenderContext::GetSystemWidth()
{
    return 4;
}

int CNE::GL_RenderContext::GetSystemHeight()
{
    return 4;
}