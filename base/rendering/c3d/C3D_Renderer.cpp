#include <c3d/C3D_Renderer.hpp>

#include <3ds.h>
#include <citro3d.h>

namespace Base {
ErrorCode C3D_Renderer::Init() {}

ErrorCode C3D_Renderer::Exit() {}

ErrorCode C3D_Renderer::Update() {}

ErrorCode C3D_Renderer::DrawArrays(int count) {
  C3D_DrawArrays(GPU_TRIANGLES, 0, count);
  return 0;
}
} // namespace Base