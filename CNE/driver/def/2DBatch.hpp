#pragma once
#include "headers.hpp"
#include "Color.hpp"

namespace CNi
{
    class _2DBatch
    {
        public:
        virtual ~_2DBatch(){}
        virtual void DrawRect(int x, int y, int w, int h, CNE::Color t_col) = 0;
        virtual void DrawRectF(float x, float y, float w, float h, CNE::Color t_col) = 0;
        virtual void DrawText(int x, int y, float size, CNE::Color t_col, std::string t_text) = 0;
        virtual void DrawCentered(int x, int y, float size, CNE::Color t_col, std::string t_text, int maxwidth, int maxheight) = 0;

    };
}