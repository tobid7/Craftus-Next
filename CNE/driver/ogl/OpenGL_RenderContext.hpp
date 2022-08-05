#pragma once
#include <RenderContext.hpp>
#include <OpenGL_Shader.hpp>
#include <cne.hpp>

namespace CNE
{
    class GL_RenderContext : public CNE::RenderContext
    {
        public:
        GL_RenderContext(CNE::GL_Shader& t_shader);
        void SetShader(CNE::GL_Shader shader);
        CNE::GL_Shader GetShader(){ return m_cshader; }
        int GetSystemWidth();
        int GetSystemHeight();

        private:
        CNE::GL_Shader m_cshader;
        int sys_w, sys_h;
    };
}