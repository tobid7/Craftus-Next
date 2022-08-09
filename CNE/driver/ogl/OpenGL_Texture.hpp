#pragma once
#include "Texture.hpp"
#include <glad.h>

namespace CNE
{
    class GL_Texture : public CNE::Texture
    {
        public:
        GL_Texture();
        void Load(std::string path) override;
        void Use() override;
        private:
        unsigned int TEX;
    
        unsigned int Width, Height;
        unsigned int Internal_Format;
        unsigned int Image_Format;
        unsigned int Wrap_S; 
        unsigned int Wrap_T; 
        unsigned int Filter_Min;
        unsigned int Filter_Max;
    };
}