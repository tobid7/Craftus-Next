#pragma once
#include "2DBatch.hpp"
#include "OpenGL_Shader.hpp"
#include "Shaders.hpp"

namespace CNEi
{
    class GL_2DBatch : public CNEi::_2DBatch
    {
        public:
        GL_2DBatch(void);
        void DrawRect(int x, int y, int w, int h, CNE::Color t_col) override;
        void DrawRectF(float x, float y, float w, float h, CNE::Color t_col) override;
        void DrawText(int x, int y, float size, CNE::Color t_col, std::string t_text) override;
        void DrawCentered(int x, int y, float size, CNE::Color t_col, std::string t_text, int maxwidth, int maxheight) override;
        private:
        CNE::GL_Shader baseshader;
        unsigned int quadVAO;

    };
}