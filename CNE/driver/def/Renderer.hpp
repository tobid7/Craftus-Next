#pragma once
#include "headers.hpp"
#include "Color.hpp"
#include "RenderObject.hpp"

namespace CNE
{
    class Renderer
    {
        public:
        virtual ~Renderer(){}
        virtual void Render() = 0;
        virtual void SetSize(int x, int y) = 0;
        virtual void SetPos(int x, int y) = 0;
        virtual int GetSizeX() = 0;
        virtual int GetSizeY() = 0;
        virtual int GetPosX() = 0;
        virtual int GetPosY() = 0;
        virtual void SetClearColor(Color clcol) = 0;
        virtual Color GetClearColor() = 0;
        std::map<int, std::vector<std::pair<CNE::RObject*, std::function<bool()>>>, std::less<int>> m_drawstack_2d, m_drawstack_3d;
    };
}