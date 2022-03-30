#pragma once
#include "global.hpp"
namespace Npi
{
    struct Vector2f
    {
        float u;
        float v;
    };
    struct Vector3f
    {
        float x;
        float y;
        float z;
    };
    struct ColoredVertex {
        Vector3f position;
        Npi::Color color;
    };
    struct TexturedVertex
    {
        Vector3f position;       
        Vector2f textureCoords;
    };
    
}