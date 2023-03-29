/*  ____            __ _                   _   _           _   
*  / ___|_ __ __ _ / _| |_ _   _ ___      | \ | | _____  _| |_ 
* | |   | '__/ _` | |_| __| | | / __|_____|  \| |/ _ \ \/ / __|
* | |___| | | (_| |  _| |_| |_| \__ \_____| |\  |  __/>  <| |_ 
*  \____|_|  \__,_|_|  \__|\__,_|___/     |_| \_|\___/_/\_\\__|
*                                                              
*  _   _ ____ ___      ____ _____ ______ _____             
* | \ | |  _ \_ _|    |  _ \___  / /  _ \___  |_   ____  __
* |  \| | |_) | |_____| | | | / / /| | | | / /\ \ / /\ \/ /
* | |\  |  __/| |_____| |_| |/ / / | |_| |/ /  \ V /  >  < 
* |_| \_|_|  |___|    |____//_/_/  |____//_/    \_/  /_/\_\
* Copyright (C) 2022-2023 Tobi-D7, RSDuck, Onixiya, D7vx-Dev, NPI-D7
*/
#include <rendering/Base_Ren_Reg.hpp>
#include <rendering/c3d/C3D_Renderer.hpp>
#include <citro3d.h>
#include <3ds.h>

static void ref_GLdrawArays(size_t pos, size_t count) {
  C3D_DrawArrays(GPU_TRIANGLES, pos, count);
}

namespace Base {
C3D_Renderer::~C3D_Renderer() {}

void C3D_Renderer::Init(int &vieport_width, int &vieport_height) {
  Base_drawArrays = &ref_GLdrawArays;
  m_vp_w = &vieport_width;
  m_vp_h = &vieport_height;
}

void C3D_Renderer::Clear() {

}

void C3D_Renderer::Render() {
  Clear();
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

void C3D_Renderer::AddObject(Base::Object &obj, RMode mode, int layer) {
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