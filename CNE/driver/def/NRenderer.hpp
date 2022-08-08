#pragma once
#include "headers.hpp"
#include "Color.hpp"

namespace CNE
{
    class NRenderer
    {
        public:
        virtual ~NRenderer(){}
        virtual void Render() = 0;
        virtual void SetSize(int x, int y) = 0;
        virtual void SetPos(int x, int y) = 0;
        virtual int GetSizeX() = 0;
        virtual int GetSizeY() = 0;
        virtual int GetPosX() = 0;
        virtual int GetPosY() = 0;
        virtual void SetClearColor(Color clcol) = 0;
        virtual Color GetClearColor() = 0;
        virtual void Clear() = 0;
        virtual std::string GetRenderApiName() = 0;
    };
}