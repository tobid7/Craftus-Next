#include <Base.hpp>
#include <BaseRender.hpp>
#include <Texture.hpp>


namespace Base {
Texture *Texture::s_instance = nullptr;
void Texture::LD7() {
  switch (_rnd_api) {
#if defined(__BASE_CTR__)
  case CITRO3D:
    s_instance = new Base::C3D_Texture();
    break;
#endif
#if defined(__BASE_DESKTOP__)
  case OPENGL:
    s_instance = new Base::GL_Texture();
    break;
#endif
  default:
    exit(EXIT_FAILURE);
    break;
  }
}
} // namespace Base