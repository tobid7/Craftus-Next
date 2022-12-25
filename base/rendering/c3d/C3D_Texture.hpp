#pragma once

#include <3ds.h>
#include <Texture.hpp>
#include <citro2d.h>
#include <citro3d.h>

namespace Base {
class C3D_Texture : public Texture {
public:
  ErrorCode I_Load(std::string file, int register_ = 0) override;
  virtual ErrorCode I_LoadMem(std::vector<unsigned char> mem,
                            int register_ = 0) override;
  ErrorCode I_Bind() override;
  virtual ErrorCode I_Destroy() override;
  float I_GetW() override;
  float I_GetH() override;
  unsigned int I_GetRegID() override;

private:
  C2D_Image regid;
  float size[2];
  unsigned int regi = 0;
  unsigned int reg = 0;
};
} // namespace Base