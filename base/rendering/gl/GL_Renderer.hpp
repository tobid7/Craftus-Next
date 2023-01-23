#pragma once
#include <rendering/Renderer.hpp>
#include <map>

namespace Base {
class GL_Renderer : public Renderer {
  ~GL_Renderer();
  void Init(int &vieport_width, int &vieport_height) override;
  void Render() override;
  void AddObject(Base::Object &obj);

private:
    Color clearcolor;
    int *m_vp_w = 0;
    int* m_vp_h = 0;
};
} // namespace Base