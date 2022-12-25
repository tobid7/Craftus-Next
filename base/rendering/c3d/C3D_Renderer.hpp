#ifndef __C3D_RENDERER_H__
#define __C3D_RENDERER_H__

#include <Renderer.hpp>

namespace Base {
class C3D_Renderer : public Renderer {
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

#endif // __C3D_RENDERER_H__