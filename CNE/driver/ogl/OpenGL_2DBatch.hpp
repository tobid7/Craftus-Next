#pragma once
#include <2DBatch.hpp>
#include <OpenGL_Shader.hpp>
#include <Shaders.hpp>

namespace CNEi
{
    class GL_2DBatch : public CNEi::_2DBatch
    {
        public:
        GL_2DBatch();
        ~GL_2DBatch();
        void DrawStack() override;
        void AddRect(int x, int y, int w, int h, CNE::Color t_col) override;
        void AddRectF(float x, float y, float w, float h, CNE::Color t_col) override;
        void AddText(int x, int y, float size, CNE::Color t_col, std::string t_text) override;
        void AddCentered(int x, int y, float size, CNE::Color t_col, std::string t_text, int maxwidth, int maxheight) override;
        private:
        CNE::GL_Shader baseshader;

    };
}