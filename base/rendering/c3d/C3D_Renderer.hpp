#ifndef __C3D_RENDERER_H__
#define __C3D_RENDERER_H__

#include <Renderer.hpp>

namespace Base {
class C3D_Renderer : public Renderer {
public:
  ErrorCode Init(int screenw, int screenh) override;
  ErrorCode Exit() override;
  ErrorCode Update() override;
  ErrorCode DrawArrays(int count) override;
  ErrorCode BeginDraw() override;
  ErrorCode SetClearColor(color_t color) override;
  color_t GetClearColor() override;

private:
  int screen_w;
  int screen_h;
  color_t cl_color;
};
} // namespace Base

#endif // __C3D_RENDERER_H__