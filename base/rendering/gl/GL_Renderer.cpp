#include <rendering/Base_Ren_Reg.hpp>
#include <rendering/gl/GL_Renderer.hpp>
#include <rendering/gl/gl.h>

static void ref_GLdrawArays(size_t pos, size_t count) {
  glDrawArrays(GL_TRIANGLES, pos, count);
}

namespace Base {
GL_Renderer::~GL_Renderer() {}

void GL_Renderer::Init(int &vieport_width, int &vieport_height) {
  Base_drawArrays = &ref_GLdrawArays;
  m_vp_w = &vieport_width;
  m_vp_h = &vieport_height;
}

void GL_Renderer::Render() {}

void GL_Renderer::AddObject(Base::Object &obj) {}
} // namespace Base