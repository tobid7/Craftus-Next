#include <cn/ConstIDs.hpp>
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

void DebugUI::DrawInto(PD::Li::Drawlist& list) {
  PD::TT::Scope st("DebugUI::Draw");
  list.SetFont(CN::ResourceMgr::GetFontTTF(CN::RC::MiracodeFontDebug));
  list.SetFontscale(0.375f);  // scale used in Lgy Engine
  for (int i = 0; i < pInfoSlot; i++) {
    list.DrawTextEx(PD::fvec2(2, i * 9), pInfoLines[i].c_str(), 0xffffffff,
                    LiTextFlags_Shaddow);
    pInfoLines[i].clear();
  }
  list.SetFontscale(0.7f);
  list.SetFont(CN::ResourceMgr::GetFontTTF(CN::RC::MiracodeFont));
  pInfoSlot = 0;
}
}  // namespace CN