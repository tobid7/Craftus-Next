#include "OpenGL_Texture.hpp"
#define STB_IMAGE_STATIC
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

CNE::GL_Texture::GL_Texture() : Width(0), Height(0), Internal_Format(GL_RGB), Image_Format(GL_RGB), Wrap_S(GL_REPEAT), Wrap_T(GL_REPEAT), Filter_Min(GL_LINEAR), Filter_Max(GL_LINEAR)
{
    glGenTextures(1, &this->TEX);
}

void CNE::GL_Texture::Load(std::string path)
{
    int w, h;
    unsigned char* data = stbi_load(path.c_str(), &w, &h, 0, 3);
    this->Width = w;
    this->Height = h;
    glBindTexture(GL_TEXTURE_2D, this->TEX);
    glTexImage2D(GL_TEXTURE_2D, 0, this->Internal_Format, w, h, 0, this->Image_Format, GL_UNSIGNED_BYTE, data);
    // set Texture wrap and filter modes
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, this->Wrap_S);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, this->Wrap_T);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, this->Filter_Min);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, this->Filter_Max);
    // unbind texture
    glBindTexture(GL_TEXTURE_2D, 0);
    stbi_image_free(data);
}

void CNE::GL_Texture::Use()
{
    glBindTexture(GL_TEXTURE_2D, this->TEX);
}

