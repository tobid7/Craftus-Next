#pragma once

#include <rendering/Texture.hpp>

namespace Base {
class GL_Texture : public Texture {
public:
  ~GL_Texture();
  void LoadFile(std::string path) override;
  void LoadBuffer(unsigned char *buffer, int w, int h, int bpp) override;
  void LoadPixels(unsigned char *buffer, int w, int h, int bpp) override;
  int GetRegId() override;
  void Bind() override;
  bvec2i GetSize() override;
  private:
  bvec2i m_size = bvec2i();
};
} // namespace Base