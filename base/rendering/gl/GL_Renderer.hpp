#pragma once
#include <Renderer.hpp>
#include <gl/gl.h>

namespace Base {
class GL_Renderer : public Renderer {
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