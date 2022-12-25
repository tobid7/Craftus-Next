#pragma once

#include <Texture.hpp>
#include <gl/gl.h>

namespace Base {
class GL_Texture : public Texture {
public:
  BaseErrorCode I_Load(std::string file, int register_ = 0) override;
  virtual BaseErrorCode I_LoadMem(std::vector<unsigned char> mem,
                            int register_ = 0) override;
  BaseErrorCode I_Bind() override;
  virtual BaseErrorCode I_Destroy() override;
  float I_GetW() override;
  float I_GetH() override;
  unsigned int I_GetRegID() override;

private:
  unsigned int regid;
  float size[2];
  unsigned int reg;
};
} // namespace Base