#include <Base.hpp>
#include <BaseRender.hpp>
#include <Renderer.hpp>

namespace Base {
Renderer *Renderer::s_instance = nullptr;
void Renderer::LD7() {
  switch (_rnd_api) {
#if defined(__BASE_CTR__)
  case CITRO3D:
    s_instance = new Base::C3D_Renderer();
    break;
#endif
#if defined(__BASE_DESKTOP__)
  case OPENGL:
    s_instance = new Base::GL_Renderer();
    break;
#endif
  default:
    exit(EXIT_FAILURE);
    break;
  }
}
} // namespace Base