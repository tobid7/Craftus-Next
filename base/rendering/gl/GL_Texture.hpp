#pragma once

#include <Texture.hpp>
#include <gl/gl.h>

namespace Base {
class GL_Texture : public Texture {
public:
  ErrorCode Load(std::string file, int register_ = 0) override;
  virtual ErrorCode LoadMem(std::vector<unsigned char> mem,
                            int register_ = 0) override;
  ErrorCode Bind() override;
  virtual ErrorCode Destroy() override;
  float GetW() override;
  float GetH() override;
  unsigned int GetRegID() override;

private:
  unsigned int regid;
  float size[2];
  unsigned int reg;
};
} // namespace Base