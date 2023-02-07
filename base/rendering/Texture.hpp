#pragma once
#include <misc/Color.hpp>
#include <misc/bvec.hpp>
#include <rendering/Vertex.hpp>
#include <string>

namespace Base {
class Texture {
public:
  virtual ~Texture() {}
  virtual void LoadFile(std::string path) = 0;
  virtual void LoadBuffer(unsigned char *buffer, int w, int h, int bpp) = 0;
  virtual void LoadPixels(unsigned char *buffer, int w, int h, int bpp) = 0;
  virtual int GetRegId() = 0;
  virtual void Bind() = 0;
  virtual bvec2i GetSize() = 0;

protected:
  int registerid = 0; // 0 means non existing
  int shaderreg = 0;
};
} // namespace Base