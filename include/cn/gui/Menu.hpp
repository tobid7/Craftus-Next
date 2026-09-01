#pragma once

#include <cn/gui/Gui.hpp>

namespace CN {
class Menu {
 public:
  Menu() : pGui(PD::fvec2(320, 240)) {}
  ~Menu() {}

  virtual void Update() {}
  void GoBack() { pGoBack = true; }
  void GoTo(Menu* menu) { pGoTo = menu; }
  PD::Li::Drawlist& GetDrawList() { return pGui.GetDrawList(); }
  bool ShouldGoBack() const { return pGoBack; }
  Menu* ShouldGoTo() { return pGoTo; }

  Gui pGui;
  bool pGoBack = false;
  Menu* pGoTo = nullptr;
};
}  // namespace CN