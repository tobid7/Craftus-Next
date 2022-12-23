#pragma once
#include <BaseRender.hpp>
#include <misc/color_t.h>
#include <Vertex.hpp>

namespace Base
{
    namespace Gui
    {
        extern BaseTexture LLC_Widgets;
        
        enum ButtonFLG
        {
            ButtonFLG_NONE = 0,
            ButtonFLG_HOVERED = 1 << 1,
            ButtonFLG_CLICKED = 1 << 2,
        };

        void Init(int w, int h);
        void UpdateScreenSize(int w, int h);
        void SetUiScale(float scale = 1);
        void DrawButton(int flg, float x, float y);
        void DrawTextureQuad(float x, float y, float u1, float v1, float u2, float v2, BaseTexture tex);
        void DrawQuad(float x, float y, float w, float h, color_t color);
    }
}