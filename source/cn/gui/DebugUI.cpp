#include <cn/gui/DebugUI.hpp>

namespace CN {
DebugUI::DebugUI() {
  pInfoLines.fill("");
  pLogLines.fill("");
}
DebugUI::~DebugUI() {}

void DebugUI::Line(const std::string& l) {
  if (pInfoSlot > (int)pInfoLines.size()) {
    return;
  }
  pInfoLines[pInfoSlot++] = l;
}

void DebugUI::Log(const std::string& l) {
  // wtf idnk how to handle that yet
}

void DebugUI::DrawInto(PD::Li::DrawList::Ref list) {
  list->SetFontScale(0.56f);  // scale used in Lgy Engine
  for (int i = 0; i < pInfoSlot; i++) {
    list->DrawTextEx(PD::fvec2(0, i * 10), pInfoLines[i], 0xffffffff,
                     LiTextFlags_Shaddow);
    pInfoLines[i] = "";
  }
  list->SetFontScale(0.7f);
  pInfoSlot = 0;
}
}  // namespace CN