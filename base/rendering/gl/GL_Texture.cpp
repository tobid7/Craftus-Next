#include <external/stb_image.h>

#include <gl/GL_Texture.hpp>

namespace Base {
BaseErrorCode GL_Texture::I_Load(std::string file, int register_) {
  glGenTextures(1, &regid);
  reg = register_;
  int width, height, nrComponents;
  unsigned char *data =
      stbi_load(file.c_str(), &width, &height, &nrComponents, 0);
  if (data) {
    GLenum format;
    if (nrComponents == 1)
      format = GL_RED;
    else if (nrComponents == 3)
      format = GL_RGB;
    else if (nrComponents == 4)
      format = GL_RGBA;
    glBindTexture(GL_TEXTURE_2D, regid);
    glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format,
                 GL_UNSIGNED_BYTE, data);
    glGenerateMipmap(GL_TEXTURE_2D);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                    GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    stbi_image_free(data);
    size[0] = width;
    size[1] = height;
    std::cout << "Generated Texture: " << std::to_string(regid)
              << " -> Size: " << std::to_string(size[0]) << ", "
              << std::to_string(size[1]) << std::endl;
  } else {
    std::cout << "Texture failed to load at path: " << file << std::endl;
    stbi_image_free(data);
    return 2;
  }
  return 0;
}

BaseErrorCode GL_Texture::I_LoadMem(std::vector<unsigned char> mem, int register_) {
  glGenTextures(1, &regid);
  reg = register_;
  int width, height, nrComponents;
  unsigned char *data = stbi_load_from_memory(mem.data(), mem.size(), &width,
                                              &height, &nrComponents, 0);
  if (data) {
    GLenum format;
    if (nrComponents == 1)
      format = GL_RED;
    else if (nrComponents == 3)
      format = GL_RGB;
    else if (nrComponents == 4)
      format = GL_RGBA;
    glBindTexture(GL_TEXTURE_2D, regid);
    glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format,
                 GL_UNSIGNED_BYTE, data);
    glGenerateMipmap(GL_TEXTURE_2D);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                    GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    stbi_image_free(data);
    size[0] = width;
    size[1] = height;
    std::cout << "Generated Texture: " << std::to_string(regid)
              << " -> Size: " << std::to_string(size[0]) << ", "
              << std::to_string(size[1]) << std::endl;
  } else {
    std::cout << "Texture failed to load from memory!" << std::endl;
    stbi_image_free(data);
    return 2;
  }
  return 0;
}

BaseErrorCode GL_Texture::I_Bind() {
  glBindTexture(GL_TEXTURE0 + reg, regid);
  return 0;
}

BaseErrorCode GL_Texture::I_Destroy() {
  glDeleteTextures(1, &regid);
  return 0;
}

float GL_Texture::I_GetW() { return size[0]; }
float GL_Texture::I_GetH() { return size[1]; }

unsigned int GL_Texture::I_GetRegID() { return regid; }
} // namespace Base