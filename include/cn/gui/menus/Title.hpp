#pragma once

#include <cn/gui/Menu.hpp>

namespace TME {
class TitleMenu : public Menu {
 public:
  TitleMenu() {}
  ~TitleMenu() {}
  PD_SHARED(TitleMenu);

  void Update() override;
};
}  // namespace TME