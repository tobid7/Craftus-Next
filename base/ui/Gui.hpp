#pragma once
#include <misc/color_t.h>
#include <Texture.hpp>
#include <Vertex.hpp>

namespace Base
{
    namespace Gui
    {
        extern Base::Texture *LLC_Widgets;
        
        enum ButtonFLG
        {
            ButtonFLG_NONE = 0,
            ButtonFLG_HOVERED = 1 << 1,
            ButtonFLG_CLICKED = 1 << 2,
        };

        enum GuiTex
        {
            GuiTex_Widgets,
            GuiTex_Icons,
            GuiTex_Background,
        };

        void Init(int w, int h);
        void UpdateScreenSize(int w, int h);
        void SetUiScale(float scale = 1);
        void DrawButton(int flg, float x, float y);
        void DrawTextureQuad(float x, float y, float u1, float v1, float u2, float v2, GuiTex tex);
        void DrawQuad(float x, float y, float w, float h, color_t color);
    }
}