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

void GL_Renderer::Clear() {
  glViewport(0, 0, m_vp_w[0], m_vp_h[0]);
  glClearColor(clearcolor.getRed() / 255, clearcolor.getGreen() / 255,
               clearcolor.getBlue() / 255, clearcolor.getAlpha() / 255);
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

void GL_Renderer::Render() {
  Clear();
  glEnable(GL_BLEND);
  glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
  if (m_DrawStack3d.size() > 0) {
    for (const auto &entry : m_DrawStack3d) { // for every layer
      for (const auto &robj : entry.second) { // draw every object
        if (robj.second()) {
          // drawcalls++;
          robj.first->Draw(bvec2i(m_vp_w[0], m_vp_h[0]));
        }
      }
    }

    m_DrawStack3d.clear();
  }

  if (m_DrawStack2d.size() > 0) {
    if (m_DrawStack2d.size() > 0) {
      for (const auto &entry : m_DrawStack2d) { // for every layer
        for (const auto &robj : entry.second) { // draw every object
          if (robj.second()) {
            // drawcalls++;
            robj.first->Draw(bvec2i(m_vp_w[0], m_vp_h[0]));
          }
        }
      }

      m_DrawStack2d.clear();
    }
  }
}

void GL_Renderer::AddObject(Base::Object &obj, RMode mode, int layer) {
  if (mode == RMode::FLAT) {
    if (m_DrawStack2d.count(layer) > 0) {
      m_DrawStack2d[layer].insert(m_DrawStack2d[layer].end(),
                                  std::make_pair(&obj, []() { return true; }));
    } else {
      std::vector<std::pair<Base::Object *, std::function<bool()>>> newStack;
      newStack.push_back(std::make_pair(&obj, []() { return true; }));
      m_DrawStack2d.insert(std::make_pair(layer, newStack));
    }
  } else {
    if (m_DrawStack3d.count(layer) > 0) {
      m_DrawStack3d[layer].insert(m_DrawStack3d[layer].end(),
                                  std::make_pair(&obj, []() { return true; }));
    } else {
      std::vector<std::pair<Base::Object *, std::function<bool()>>> newStack;
      newStack.push_back(std::make_pair(&obj, []() { return true; }));
      m_DrawStack3d.insert(std::make_pair(layer, newStack));
    }
  }
}
} // namespace Base