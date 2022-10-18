#pragma once
#include <iostream>
#include <string>
#include <BaseRender.hpp>
#include <TextureMapper.hpp>
#include <stringcheats.hpp>

namespace Base
{
    struct Vec2i
    {
        Vec2i(int ix = 0, int iy = 0)
        {
            x = ix;
            y = iy;
        }
        int x;
        int y;
    };
    struct Vec2f
    {
        Vec2f(float ix = 0, float iy = 0)
        {
            x = ix;
            y = iy;
        }
        float x;
        float y;
    };

    struct Vec3i
    {
        Vec3i(int ix = 0, int iy = 0, int iz = 0)
        {
            x = ix;
            y = iy;
            z = iz;
        }
        int x;
        int y;
        int z;
    };
    struct Vec3f
    {
        Vec3f(float ix = 0, float iy = 0, float iz = 0)
        {
            x = ix;
            y = iy;
            z = iz;
        }
        float x;
        float y;
        float z;
    };

    void Init();
    void Exit();
    std::string GetVersion();
    std::string GetName();
    std::string GetPlatform();
}