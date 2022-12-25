#pragma once
#include <Renderer.hpp>
#include <gl/gl.h>

namespace Base {
class GL_Renderer : public Renderer {
public:
  BaseErrorCode I_Init(int screenw, int screenh) override;
  BaseErrorCode I_Exit() override;
  BaseErrorCode I_Update() override;
  BaseErrorCode I_DrawArrays(int count) override;
  BaseErrorCode I_BeginDraw() override;
  BaseErrorCode I_SetClearColor(color_t color) override;
  color_t I_GetClearColor() override;
  private:
  int screen_w;
  int screen_h;
  color_t cl_color;
};
} // namespace Base