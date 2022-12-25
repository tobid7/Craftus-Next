#include <Base.hpp>
#include <BaseRender.hpp>
#include <VArray.hpp>

namespace Base {
    VertexArray* VertexArray::s_instance = nullptr;
void VertexArray::LD7() {
  switch (_rnd_api) {
#if defined(__BASE_CTR__)
  case CITRO3D:
    this->s_instance = new Base::C3D_VertexArray();
    break;
#endif
#if (defined(__BASE_DESKTOP__) || defined(__BASE__NX__))
  case OPENGL:
    this->s_instance = new Base::GL_VertexArray();
    break;
#endif
  default:
    exit(EXIT_FAILURE);
    break;
  }
}
} // namespace Base