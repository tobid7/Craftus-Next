#pragma once
#include "Renderer.hpp"
#include "Color.hpp"
#include <glad/glad.h>

namespace CNE
{
    class GL_Renderer : public Renderer
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
        void SetClearColor(Color clcol) override;
        Color GetClearColor() override;
        

        private:
        Color clearcol;
        int sizex = 0;
        int sizey = 0;
        int posx = 0;
        int posy = 0;
    };
}