#pragma once
#include "headers.hpp"

namespace CNE
{
    class Texture
    {
        public:
        virtual ~Texture(){}
        virtual void Load(std::string path) = 0;
        virtual void Use() = 0;
    };
}