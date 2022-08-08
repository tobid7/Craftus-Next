#pragma once
#include "NRenderer.hpp"
#include "Color.hpp"

#include <glad.h>

namespace CNE
{
    class GL_Renderer : public CNi::NRenderer
    {
        public:
        GL_Renderer();
        ~GL_Renderer();
        void Render() override;
        void SetSize(int x, int y);
        int GetSizeX();
        int GetSizeY();
        void SetPos(int x, int y);
        int GetPosX();
        int GetPosY();
        void SetClearColor(Color clcol);
        Color GetClearColor();
        void Clear();
        std::string GetRenderApiName();
        

        private:
        int ver = 0;
        Color clearcol;
        int sizex = 0;
        int sizey = 0;
        int posx = 0;
        int posy = 0;
    };
}