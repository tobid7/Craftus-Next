#pragma once

#include <cn/gui/Gui.hpp>

namespace TME {
class Menu {
 public:
  Menu() {}
  ~Menu() {}

  void Update();

  Gui pGui;
};
}  // namespace TME