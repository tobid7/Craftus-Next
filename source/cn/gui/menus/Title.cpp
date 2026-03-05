#include <cn/gui/menus/Menus.hpp>

extern "C" {
#include <GameStates.h>
}

namespace TME {
void TitleMenu::Update() {
  pGui.Start();
  pGui.DrawBg();
  pGui.SetPos(PD::fvec2(0, 0.25));
  pGui.Align(Gui::Align_Center);
  pGui.Button("Singleplayer");
  pGui.Button("Multiplayer", true);
  if (pGui.Button("Options")) {
    GoTo(OptionsMenu::New(pGui.ctx));
  }
  pGui.Button("Exit");
  pGui.SetPos(PD::fvec2(0, 0));
  pGui.Align(Gui::Align_Left | Gui::Align_Bot);
  pGui.DirPadding(8, 2);
  pGui.Label(CRAFTUS_VERSION_STR);
  pGui.SetPos(PD::fvec2(0, 0));
  pGui.DirPadding(8, 0);
  pGui.DirPadding(2, 2);
  pGui.Align(Gui::Align_Right | Gui::Align_Bot);
  pGui.Label("tobid7");
}
}  // namespace TME