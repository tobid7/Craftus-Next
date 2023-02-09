#pragma once

#include <rendering/Texture.hpp>

namespace Base {
class C3D_Texture : public Texture {
public:
  ~C3D_Texture();
  void LoadFile(std::string path) override;
  void LoadBuffer(unsigned char *buffer, int w, int h, int bpp) override;
  void LoadPixels(unsigned char *buffer, int w, int h, int bpp) override;
  int GetRegId() override;
  void Bind() override;
  bvec2i GetSize() override;

private:
  bvec2i m_size = bvec2i();
  unsigned int texture;
};
} // namespace Base