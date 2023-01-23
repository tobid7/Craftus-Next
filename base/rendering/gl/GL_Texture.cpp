
#include <rendering/gl/GL_Texture.hpp>
#include <rendering/gl/gl.h>

namespace Base {

GL_Texture::~GL_Texture() {}

void GL_Texture::LoadFile(std::string path) {}

void GL_Texture::LoadBuffer(unsigned char *buffer, int w, int h, int bpp) {}

void GL_Texture::LoadPixels(unsigned char *buffer, int w, int h, int bpp) {}

int GL_Texture::GetRegId() { return registerid; }

void GL_Texture::Bind() { glBindTexture(GL_TEXTURE0 + shaderreg, registerid); }
} // namespace Base