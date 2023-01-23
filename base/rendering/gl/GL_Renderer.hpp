#pragma once
#include <functional>
#include <map>
#include <rendering/Renderer.hpp>
#include <vector>


namespace Base {
class GL_Renderer : public Renderer {
  ~GL_Renderer();
  void Init(int &vieport_width, int &vieport_height) override;
  void Render() override;
  void AddObject(Base::Object &obj, Base::RMode mode = RMode::FLAT, int layer = 0);

private:
  Color clearcolor;
  int *m_vp_w = 0;
  int *m_vp_h = 0;
  std::map<int, std::vector<std::pair<Base::Object *, std::function<bool()>>>,
           std::less<int>>
      m_DrawStack2d, m_DrawStack3d;
};
} // namespace Base