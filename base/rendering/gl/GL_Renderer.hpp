#pragma once
#include <Renderer.hpp>
#include <gl/gl.h>

namespace Base {
class GL_Renderer : public Renderer {
public:
  ErrorCode I_Init(int screenw, int screenh) override;
  ErrorCode I_Exit() override;
  ErrorCode I_Update() override;
  ErrorCode I_DrawArrays(int count) override;
  ErrorCode I_BeginDraw() override;
  ErrorCode I_SetClearColor(color_t color) override;
  color_t I_GetClearColor() override;
  private:
  int screen_w;
  int screen_h;
  color_t cl_color;
};
} // namespace Base