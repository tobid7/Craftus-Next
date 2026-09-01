#pragma once

#include <cn/gui/Menu.hpp>

namespace CN {
class TitleMenu : public Menu {
 public:
  TitleMenu() : Menu() {}
  ~TitleMenu() {}

  void Update() override;
};
}  // namespace CN