#pragma once

#include <cn/gui/Menu.hpp>

namespace TME {
class OptionsMenu : public Menu {
 public:
  OptionsMenu() {}
  ~OptionsMenu() {}
  PD_SHARED(OptionsMenu)

  void Update() override;

  int pState = 0;
};
}  // namespace TME