
#include <external/stb_image.h>
#include <iostream>
#include <rendering/c3d/C3D_Texture.hpp>

#include <vector>

namespace Base {

C3D_Texture::~C3D_Texture() {
}

void C3D_Texture::LoadFile(std::string path) {
  
}

void C3D_Texture::LoadBuffer(unsigned char *buffer, int w, int h, int bpp) {
}

void C3D_Texture::LoadPixels(unsigned char *buffer, int w, int h, int bpp) {
  
}

int C3D_Texture::GetRegId() { return texture; }

void C3D_Texture::Bind() {

}

bvec2i C3D_Texture::GetSize() { return m_size; }
} // namespace Base