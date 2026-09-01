#pragma once

#include <cn/gui/Menu.hpp>

namespace CN {
class OptionsMenu : public Menu {
 public:
  OptionsMenu() : Menu() {}
  ~OptionsMenu() {}

  void Update() override;

  int pState = 0;
};
}  // namespace CN