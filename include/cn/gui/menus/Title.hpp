#pragma once

#include <cn/gui/Menu.hpp>

namespace TME {
class TitleMenu : public Menu {
 public:
  TitleMenu(PD::Context& ctx) : Menu(ctx) {}
  ~TitleMenu() {}
  PD_SHARED(TitleMenu);

  void Update() override;
};
}  // namespace TME