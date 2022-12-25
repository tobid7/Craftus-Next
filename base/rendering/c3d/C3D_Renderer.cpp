#include <c3d/C3D_Renderer.hpp>

#include <3ds.h>
#include <citro3d.h>

namespace Base {
BaseErrorCode C3D_Renderer::I_Init(int screenw, int screenh) {
  screen_h = screenh;
  screen_w = screenw;
  std::cout << "Initialisized C3D Renderer" << std::endl;
  return 0;
}

BaseErrorCode C3D_Renderer::I_Exit() {return 0;}

BaseErrorCode C3D_Renderer::I_Update() {return 0;}

BaseErrorCode C3D_Renderer::I_DrawArrays(int count) {
  C3D_DrawArrays(GPU_TRIANGLES, 0, count);
  return 0;
}

BaseErrorCode C3D_Renderer::I_BeginDraw() {
  return !C3D_FrameBegin(C3D_FRAME_SYNCDRAW);
}

BaseErrorCode C3D_Renderer::I_SetClearColor(color_t color) { cl_color = color; }

color_t C3D_Renderer::I_GetClearColor() { return cl_color; }
} // namespace Base