#pragma once

#include <palladium>

constexpr PD::fvec4 GuiWidget_ButtonDead(0, 46, 200, 20);
constexpr PD::fvec4 GuiWidget_Button(0, 66, 200, 20);
constexpr PD::fvec4 GuiWidget_ButtonActive(0, 86, 200, 20);
constexpr PD::fvec4 GuiWidget_QSB(0, 0, 182, 22);    // Quick Sekct Bar
constexpr PD::fvec4 GuiWidget_QSBS(0, 22, 24, 24);   // Quick Sekct Bar Selected
constexpr PD::fvec4 GuiWidget_QSL(24, 23, 22, 22);   // Quick Sekct Left
constexpr PD::fvec4 GuiWidget_SDR(194, 66, 6, 20);   // Slider Drag Right
constexpr PD::fvec4 GuiWidget_SDL(0, 66, 6, 20);     // Slider Drag Left
constexpr PD::fvec4 GuiWidget_SDRA(194, 86, 6, 20);  // Slider Drag Right
constexpr PD::fvec4 GuiWidget_SDLA(0, 86, 6, 20);    // Slider Drag Left
constexpr PD::fvec4 GuiIcon_Crosshair(0, 0, 16, 16);
constexpr PD::fvec4 GuiIcon_HeartEmpty(16, 0, 9, 9);
constexpr PD::fvec4 GuiIcon_HeartFull(52, 0, 9, 9);
constexpr PD::fvec4 GuiIcon_HeartHalf(61, 0, 9, 9);

namespace CN {
class Gui {
 public:
  enum Align_ {
    Align_Left = 1 << 0,
    Align_Center = 1 << 1,
    Align_Right = 1 << 2,
    Align_Top = 1 << 3,
    Align_Mid = 1 << 4,
    Align_Bot = 1 << 5,
    Align_Default = Align_Left | Align_Top,
  };
  struct ObjPadding {
    PD::fvec4 Pad;
    PD::u32 Dir = 0;
  };
  Gui(PD::Context& ctx, PD::fvec2 size = 0);
  ~Gui() {}

  void Start();
  void DrawBg();
  bool Button(const std::string& str, bool disabled = false);
  bool Label(const std::string& str, bool selectable = false);
  void GuiSlider(const std::string& str, float& v);

  void SetPos(PD::fvec2 pos) { pPos = pos; }
  void Align(PD::u32 alignment) { pAlignment = alignment; }
  void DirPadding(PD::u32 dir, float pad);
  PD::Li::DrawList::Ref GetDrawList() { return pGui; }

  void pTexElem(PD::Li::Texture::Ref tex, PD::fvec2 p, PD::fvec2 s,
                PD::fvec4 c);

  void pAlignPos(PD::u32 a, PD::fvec2& pos, PD::fvec2 size);
  void pNorm(PD::fvec2& v) { v /= pSize; }
  PD::fvec2 p2Screen(const PD::fvec2& v) { return v * pSize; }

  PD::Li::DrawList::Ref pGui = nullptr;

  PD::Context& ctx;

  PD::fvec2 pSize;
  PD::fvec2 pPos;
  PD::fvec2 pPad;
  ObjPadding pObjPad;
  PD::u32 pAlignment = Align_Left | Align_Top;

  PD::Li::Texture::Ref pTexWidgets = nullptr;
  PD::Li::Texture::Ref pTexIcons = nullptr;
};
}  // namespace CN