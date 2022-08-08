#pragma once
#include "headers.hpp"
#include "Color.hpp"

namespace CNi
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
        virtual void SetClearColor(CNE::Color clcol) = 0;
        virtual CNE::Color GetClearColor() = 0;
        virtual void Clear() = 0;
        virtual std::string GetRenderApiName() = 0;
    };
}