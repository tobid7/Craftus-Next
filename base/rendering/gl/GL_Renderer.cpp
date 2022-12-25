#include <gl/GL_Renderer.hpp>

namespace Base {
BaseErrorCode GL_Renderer::I_Init(int screenw, int screenh) {
  glEnable(GL_DEPTH);
  screen_h = screenh;
  screen_w = screenw;
  cl_color = color_t(0.05f, 0.05f, 0.05f, 1.f);
  std::cout << "GL_Renderer -> " << screen_w << "x" << screen_h << std::endl;
  return 0;
}

BaseErrorCode GL_Renderer::I_Exit() { return 0; }

BaseErrorCode GL_Renderer::I_Update() { return 0; }

BaseErrorCode GL_Renderer::I_DrawArrays(int count) {
  glDrawArrays(GL_TRIANGLES, 0, count);
  return 0;
}

BaseErrorCode GL_Renderer::I_BeginDraw()
{
  glViewport(0, 0, screen_w, screen_h);
  glClearColor(cl_color.r()/255, cl_color.g()/255, cl_color.b()/255, cl_color.a()/255);
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
  return 0;
}

BaseErrorCode GL_Renderer::I_SetClearColor(color_t color)
{
  cl_color = color;
  return 0;
}

color_t GL_Renderer::I_GetClearColor()
{
  return cl_color;
}
} // namespace Base