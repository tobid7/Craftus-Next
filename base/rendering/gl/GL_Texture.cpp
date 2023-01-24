
#include <external/stb_image.h>
#include <iostream>
#include <rendering/gl/GL_Texture.hpp>
#include <rendering/gl/gl.h>
#include <vector>

std::vector<unsigned *> texture_reg;

static int GetReg(int reg) { return texture_reg[reg][0]; }

namespace Base {

GL_Texture::~GL_Texture() {}

void GL_Texture::LoadFile(std::string path) {
  unsigned GL_Tex = 0;
  int width, height, nrChannels;
  unsigned char *data =
      stbi_load(path.c_str(), &width, &height, &nrChannels, 4);
  if (data) {
    GLenum format;
    if (nrChannels == 1)
      format = GL_RED;
    else if (nrChannels == 3)
      format = GL_RGB;
    else if (nrChannels == 4)
      format = GL_RGBA;
    glBindTexture(GL_TEXTURE_2D, GL_Tex);
    glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format,
                 GL_UNSIGNED_BYTE, data);
    glGenerateMipmap(GL_TEXTURE_2D);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                    GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    stbi_image_free(data);
    m_size = bvec2i(width, height);
    texture_reg.push_back(&GL_Tex);
    this->registerid = texture_reg.size();
    std::cout << "Generated Texture: " << std::to_string(GL_Tex)
              << " -> Engine Reg: " << std::to_string(this->registerid)
              << " -> Size: " << std::to_string(m_size.x) << ", "
              << std::to_string(m_size.y) << std::endl;
  } else {
    std::cout << "Texture failed to load at path: " << path << std::endl;
    stbi_image_free(data);
    return;
  }
  return;
}

void GL_Texture::LoadBuffer(unsigned char *buffer, int w, int h, int bpp) {
  unsigned GL_Tex = 0;
  int width, height, nrChannels;
  unsigned char *data = stbi_load_from_memory(buffer, (w * h * bpp), &width,
                                              &height, &nrChannels, 4);
  if (data) {
    GLenum format;
    if (nrChannels == 1)
      format = GL_RED;
    else if (nrChannels == 3)
      format = GL_RGB;
    else if (nrChannels == 4)
      format = GL_RGBA;
    glBindTexture(GL_TEXTURE_2D, GL_Tex);
    glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format,
                 GL_UNSIGNED_BYTE, data);
    glGenerateMipmap(GL_TEXTURE_2D);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                    GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    stbi_image_free(data);
    m_size = bvec2i(width, height);
    texture_reg.push_back(&GL_Tex);
    this->registerid = texture_reg.size();
    std::cout << "Generated Texture: " << std::to_string(GL_Tex)
              << " -> Engine Reg: " << std::to_string(this->registerid)
              << " -> Size: " << std::to_string(m_size.x) << ", "
              << std::to_string(m_size.y) << std::endl;
  } else {
    std::cout << "Texture failed to load from Buffer! " << std::endl;
    stbi_image_free(data);
    return;
  }
  return;
}

void GL_Texture::LoadPixels(unsigned char *buffer, int w, int h, int bpp) {
  unsigned GL_Tex = 0;
  int width, height, nrChannels;
  width = w;
  height = h;
  nrChannels = bpp;
  if (buffer) {
    GLenum format;
    if (nrChannels == 1)
      format = GL_RED;
    else if (nrChannels == 3)
      format = GL_RGB;
    else if (nrChannels == 4)
      format = GL_RGBA;
    glBindTexture(GL_TEXTURE_2D, GL_Tex);
    glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format,
                 GL_UNSIGNED_BYTE, buffer);
    glGenerateMipmap(GL_TEXTURE_2D);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                    GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    m_size = bvec2i(width, height);
    texture_reg.push_back(&GL_Tex);
    this->registerid = texture_reg.size();
    std::cout << "Generated Texture: " << std::to_string(GL_Tex)
              << " -> Engine Reg: " << std::to_string(this->registerid)
              << " -> Size: " << std::to_string(m_size.x) << ", "
              << std::to_string(m_size.y) << std::endl;
  } else {
    std::cout << "Texture failed to load from Pixels! " << std::endl;
    return;
  }
  return;
}

int GL_Texture::GetRegId() { return registerid; }

void GL_Texture::Bind() {
  glBindTexture(GL_TEXTURE0 + shaderreg, GetReg(registerid));
}

bvec2i GL_Texture::GetSize() { return m_size; }
} // namespace Base