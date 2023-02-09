#pragma once
#include <functional>
#include <map>
#include <rendering/Renderer.hpp>
#include <vector>

namespace Base {
class C3D_Renderer : public Renderer {
public:
  C3D_Renderer() {}
  ~C3D_Renderer();
  void Init(int &vieport_width, int &vieport_height) override;
  void Clear() override;
  void Render() override;
  void AddObject(Base::Object &obj, Base::RMode mode = RMode::FLAT,
                 int layer = 0);

private:
  Color clearcolor;
  int *m_vp_w = 0;
  int *m_vp_h = 0;
  std::map<int, std::vector<std::pair<Base::Object *, std::function<bool()>>>,
           std::less<int>>
      m_DrawStack2d, m_DrawStack3d;
};
} // namespace Base