#include "global.hpp"

#include <cstring>
#include <fstream>
#include <png.h>
#include <vector>

namespace Npi {
    Texture::Texture() :
    m_width(0),
    m_height(0),
    m_path(""),
    m_texture(nullptr) { /* do nothing */ }

    Texture::Texture(Npi::Texture& t_texture) {
        operator=(t_texture);
    }

    Texture::~Texture() {
        if (m_texture != nullptr) {
            m_texture = nullptr;
        }
    }

    bool Texture::loadFromFile(const std::string& t_filename) {
        return loadPng(t_filename);
    }

    /*bool Texture::loadFromBuffer(const void* t_buffer) {
        return loadPng(t_buffer, true);
    }*/

    int Texture::getWidth() {
        return m_width;
    }

    int Texture::getHeight() {
        return m_height;
    }

    int Texture::getCalculatedWidth() {
        return getNextPow2(m_width);
    }

    int Texture::getCalculatedHeight() {
        return getNextPow2(m_height);
    }

    std::string Texture::getPath() {
        return m_path;
    }

    C3D_Tex* Texture::getTexture() {
        return m_texture;
    }

    Tex3DS_SubTexture& Texture::getSubtexture() {
        return m_subtexture;
    }

  /* C2D_Image& Texture::getImage() {
       return m_image;
   }*/

    Npi::Texture& Texture::operator=(Npi::Texture& rhs) {
        if(this == &rhs) return *this;

        m_width = rhs.getWidth();
        m_height = rhs.getHeight();
        m_path = rhs.getPath();

        if (m_texture) m_texture = nullptr;

        if (rhs.getTexture() != nullptr) {
            loadPng(rhs.getPath());
        }

        return *this;
    }

    // private methods
    bool Texture::loadPng(const std::string& t_filename) {
        m_texture = nullptr;

        glGenTextures(1, &texture);
        glBindTexture(GL_TEXTURE_2D, texture);
            
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);	
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
            
        int width, height, nrChannels;
        unsigned char *data = stbi_load(t_filename.c_str(), &width, &height, &nrChannels, 0);
        if (data)
        {
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
            glGenerateMipmap(GL_TEXTURE_2D);
        }
        else
        {
            std::cout << "Failed to load texture" << std::endl;
        }

        return true;
    }

    inline u32 Texture::getNextPow2(u32 v) {
        v--;
        v |= v >> 1;
        v |= v >> 2;
        v |= v >> 4;
        v |= v >> 8;
        v |= v >> 16;
        v++;
        return v >= 64 ? v : 64;
    }
} /* Npi */