
#include <external/stb_image.h>
#include <iostream>
#include <rendering/gl/GL_Texture.hpp>
#include <rendering/gl/gl.h>
#include <vector>

namespace Base {

GL_Texture::~GL_Texture() {
  if (texture)
    glDeleteTextures(1, &texture);
}

void GL_Texture::LoadFile(std::string path) {
  glGenTextures(1, &texture);
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
    glBindTexture(GL_TEXTURE_2D, texture);
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
    std::cout << "Generated Texture: " << std::to_string(texture)
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
  glGenTextures(1, &texture);
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
    glBindTexture(GL_TEXTURE_2D, texture);
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
    std::cout << "Generated Texture: " << std::to_string(texture)
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
  glGenTextures(1, &texture);
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
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format,
                 GL_UNSIGNED_BYTE, buffer);
    glGenerateMipmap(GL_TEXTURE_2D);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                    GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    m_size = bvec2i(width, height);
    std::cout << "Generated Texture: " << std::to_string(texture)
              << " -> Size: " << std::to_string(m_size.x) << ", "
              << std::to_string(m_size.y) << std::endl;
  } else {
    std::cout << "Texture failed to load from Pixels! " << std::endl;
    return;
  }
  return;
}

int GL_Texture::GetRegId() { return texture; }

void GL_Texture::Bind() {
  glActiveTexture(GL_TEXTURE0 + shaderreg);
  glBindTexture(GL_TEXTURE0 + shaderreg, texture);
}

bvec2i GL_Texture::GetSize() { return m_size; }
} // namespace Base