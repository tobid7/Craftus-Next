#pragma once
#include <headers.hpp>

namespace CNE
{
    class RenderContext
    {
        virtual void SetShader();
        virtual int GetSystemWidth();
        virtual int GetSystemHeight();
    };
}