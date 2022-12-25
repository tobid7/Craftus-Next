#ifndef __C3D_RENDERER_H__
#define __C3D_RENDERER_H__

#include <Renderer.hpp>

namespace Base {
class C3D_Renderer : public Renderer {
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

#endif // __C3D_RENDERER_H__