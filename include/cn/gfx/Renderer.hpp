#pragma once

#include <3ds.h>
#include <citro3d.h>

#include <cn/gfx/Camera.hpp>

namespace TME {
class Renderer {
 public:
  Renderer() = default;
  ~Renderer() = default;

  static C3D_RenderTarget* pTop[2];
  static C3D_RenderTarget* pBot;
}:
}  // namespace TME