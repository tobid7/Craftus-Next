#include <cn/Lgy.hpp>
#include <cn/gui/menus/Options.hpp>

extern "C" {
#include <GameStates.h>
}

namespace TME {
void OptionsMenu::Update() {
  pGui.Start();
  pGui.DrawBg();
  pGui.SetPos(PD::fvec2(0, 0));
  pGui.Align(Gui::Align_Center | Gui::Align_Top);
  pGui.DirPadding(1, 5);
  int state = pState;
  if (state == 0) {
    if (pGui.Button("Graphics")) {
      pState = 1;
    }
    pGui.Button("Sound", true);
    pGui.Button("Controls", true);
    pGui.Button("Language", true);
    pGui.Button("Texturepacks", true);
    pGui.Button("Licenses", true);
  } else if (state == 1) {
    static float v;
    pGui.GuiSlider("Fov 60", cn_options.Fov);
    pGui.GuiSlider("MipMaps 2", v);
    if (pGui.Button("Clouds " +
                    std::string(cn_options.Clouds ? "true" : "false"))) {
      cn_options.Clouds = !cn_options.Clouds;
    }
    if (pGui.Button("Hand " +
                    std::string(cn_options.Hand ? "true" : "false"))) {
      cn_options.Hand = !cn_options.Hand;
    }
  }
  pGui.Align(Gui::Align_Bot | Gui::Align_Center);
  pGui.DirPadding(4, 5);
  pGui.SetPos(PD::fvec2(0, 0));
  if (pGui.Button("Back")) {
    if (pState != 0) {
      pState = 0;
    } else {
      GoBack();
    }
  }
}
}  // namespace TME