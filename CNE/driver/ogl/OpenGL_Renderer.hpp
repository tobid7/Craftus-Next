#pragma once
#include "NRenderer.hpp"
#include "Color.hpp"

#include <glad.h>

namespace CNi
{
    class GL_Renderer : public CNi::NRenderer
    {
        public:
        GL_Renderer();
        ~GL_Renderer();
        void Render() override;
        void SetSize(int x, int y) override;
        int GetSizeX() override;
        int GetSizeY() override;
        void SetPos(int x, int y) override;
        int GetPosX() override;
        int GetPosY() override;
        void SetClearColor(CNE::Color clcol) override;
        CNE::Color GetClearColor() override;
        void Clear() override;
        std::string GetRenderApiName() override;
        

        private:
        int ver = 0;
        CNE::Color clearcol;
        int sizex = 0;
        int sizey = 0;
        int posx = 0;
        int posy = 0;
    };
}