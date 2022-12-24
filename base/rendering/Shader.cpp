#include <Shader.hpp>
#include <BaseRender.hpp>
#include <Base.hpp>

namespace Base {
    Shader* Shader::s_instance = nullptr;
void Shader::LD7() {
  switch (_rnd_api) {
#if defined(__BASE_CTR__)
  case CITRO3D:
    s_instance = new Base::C3D_Shader();
    break;
#endif
#if defined(__BASE_DESKTOP__)
  case OPENGL:
    s_instance = new Base::GL_Shader();
    break;
#endif
  default:
    exit(EXIT_FAILURE);
    break;
  }
}
} // namespace Base