#pragma once

#include <cn/gui/Gui.hpp>

namespace TME {
class Menu {
 public:
  Menu() {}
  ~Menu() {}
  PD_SHARED(Menu)

  virtual void Update() {}
  void GoBack() { pGoBack = true; }
  void GoTo(Ref menu) { pGoTo = menu; }
  PD::Li::DrawList::Ref GetDrawList() { return pGui.GetDrawList(); }
  bool ShouldGoBack() const { return pGoBack; }
  Ref ShouldGoTo() { return pGoTo; }
  
  Gui pGui = Gui(PD::fvec2(320, 240));
  bool pGoBack = false;
  Ref pGoTo = nullptr;
};
}  // namespace TME