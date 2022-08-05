#pragma once
#include <headers.hpp>
#include <Color.hpp>

namespace CNEi
{
    class _2DBatch
    {
        public:
        virtual void DrawStack();
        virtual void AddRect(int x, int y, int w, int h, CNE::Color t_col);
        virtual void AddRectF(float x, float y, float w, float h, CNE::Color t_col);
        virtual void AddText(int x, int y, float size, CNE::Color t_col, std::string t_text);
        virtual void AddCentered(int x, int y, float size, CNE::Color t_col, std::string t_text, int maxwidth, int maxheight);

    };
}