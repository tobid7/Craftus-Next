#pragma once
#include <rendering/Vertex.hpp>
#include <string>

namespace Base {
class Texture {
public:
  virtual ~Texture() {}
  virtual void LoadFile(std::string path);
  virtual void LoadBuffer(unsigned char *buffer, int w, int h, int bpp);
  virtual void LoadPixels(unsigned char *buffer, int w, int h, int bpp);
  virtual int GetRegId();

protected:
  int registerid = 0; // 0 means non existing
};
} // namespace Base