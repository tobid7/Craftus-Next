#include <c3d/C3D_Renderer.hpp>

#include <3ds.h>
#include <citro3d.h>

namespace Base {
ErrorCode C3D_Renderer::Init(int screenw, int screenh) {
  screen_h = screenh;
  screen_w = screenw;
  std::cout << "Initialisized C3D Renderer" << std::endl;
  return 0;
}

ErrorCode C3D_Renderer::Exit() {return 0;}

ErrorCode C3D_Renderer::Update() {return 0;}

ErrorCode C3D_Renderer::DrawArrays(int count) {
  C3D_DrawArrays(GPU_TRIANGLES, 0, count);
  return 0;
}

ErrorCode C3D_Renderer::BeginDraw() {
  return !C3D_FrameBegin(C3D_FRAME_SYNCDRAW);
}

ErrorCode C3D_Renderer::SetClearColor(color_t color) { cl_color = color; }

color_t C3D_Renderer::GetClearColor() { return cl_color; }
} // namespace Base