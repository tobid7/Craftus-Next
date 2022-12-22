#include <gl/GL_Renderer.hpp>

namespace Base {
ErrorCode GL_Renderer::Init(int screenw, int screenh) {
  glEnable(GL_DEPTH);
  screen_h = screenh;
  screen_w = screenw;
  cl_color = color_t(0.05f, 0.05f, 0.05f, 1.f);
  std::cout << "GL_Renderer -> " << screen_w << "x" << screen_h << std::endl;
  return 0;
}

ErrorCode GL_Renderer::Exit() { return 0; }

ErrorCode GL_Renderer::Update() { return 0; }

ErrorCode GL_Renderer::DrawArrays(int count) {
  glDrawArrays(GL_TRIANGLES, 0, count);
  return 0;
}

ErrorCode GL_Renderer::BeginDraw()
{
  glViewport(0, 0, screen_w, screen_h);
  glClearColor(cl_color.r()/255, cl_color.g()/255, cl_color.b()/255, cl_color.a()/255);
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
  return 0;
}

ErrorCode GL_Renderer::SetClearColor(color_t color)
{
  cl_color = color;
  return 0;
}

color_t GL_Renderer::GetClearColor()
{
  return cl_color;
}
} // namespace Base