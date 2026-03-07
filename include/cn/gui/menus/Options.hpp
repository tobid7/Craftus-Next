#pragma once

#include <cn/gui/Menu.hpp>

namespace CN {
class OptionsMenu : public Menu {
 public:
  OptionsMenu(PD::Context& ctx) : Menu(ctx) {}
  ~OptionsMenu() {}
  PD_SHARED(OptionsMenu)

  void Update() override;

  int pState = 0;
};
}  // namespace CN