#include <cn/ConstIDs.hpp>
#include <cn/gui/Gui.hpp>
#include <cn/misc/ResourceMgr.hpp>

/**
 * The order of how things get setup needs
 * to be changed probably
 */

/**
 * Generelle Regeln (DE cause tool lazy toi think of them in English)
 * - Hintergrund nutzt Layer 0 (ausschlieqlich da es ne einzel textur ist)
 * - Container (Inventare) auf Layer 1 (meist eigene Textur)
 * - Block Icons kommen auf Layer 2 (ansonnsten ungenutzt)
 * - Buttons kommen auf Layer 3
 * - Texte von Buttons oder auch Labels kommen auf Layer 4 -> 1 Drawcall
 *   (Layer 4 da die blockIcons auch nen Layer brauchen)
 */

namespace CN {
Gui::Gui(PD::Context& ctx, PD::fvec2 size) : ctx(ctx), pSize(size) {
  pPad = PD::fvec2(5.f / size.x, 5.f / size.y);
  pTexIcons = CN::ResourceMgr::GetTex(CN::RC::GuiIcons);
  pTexWidgets = CN::ResourceMgr::GetTex(CN::RC::GuiWidgets);
  pGui = PD::Li::DrawList::New(ctx);
  pGui->SetFont(CN::ResourceMgr::GetFontTTF(CN::RC::MiracodeFont));
  pGui->SetFontScale(0.6);
}

void Gui::Start() {
  pPos = 0;
  pObjPad.Dir = 0;
  pObjPad.Pad = 0;
}

void Gui::DrawBg() {
  pGui->Layer(0);
  pGui->DrawTexture(CN::ResourceMgr::GetTex(CN::RC::GuiBG));
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 8; j++) {
      pGui->DrawRectFilled(PD::fvec2(i * 32, j * 32), 32, 0xffffffff);
    }
  }
}

bool Gui::Button(const std::string& str, bool disabled) {
  bool ret = false;
  pGui->Layer(3);
  PD::fvec2 pos = pPos;
  PD::fvec2 size(200 * 1.3, 20 * 1.3);
  pNorm(size);
  pPos.y += size.y + pPad.y;
  pAlignPos(pAlignment, pos, size);
  if (!disabled &&
      PD::Li::Renderer::InBox(ctx.Hid()->MousePos(),
                              PD::fvec4(p2Screen(pos), p2Screen(size)))) {
    pTexElem(pTexWidgets, p2Screen(pos), p2Screen(size),
             GuiWidget_ButtonActive);
  } else {
    pTexElem(pTexWidgets, p2Screen(pos), p2Screen(size),
             disabled ? GuiWidget_ButtonDead : GuiWidget_Button);
  }
  if (ctx.Hid()->IsUp(ctx.Hid()->Key::Touch) &&
      PD::Li::Renderer::InBox(ctx.Hid()->MousePosLast(),
                              PD::fvec4(p2Screen(pos), p2Screen(size)))) {
    ret = true;
  }
  pGui->Layer(4);
  pGui->SetFontScale(0.6 * 1.3);
  pGui->DrawTextEx(p2Screen(pos) + PD::fvec2(0, -1), str, 0xffffffff,
                   LiTextFlags_AlignMid | LiTextFlags_Shaddow, p2Screen(size));
  pGui->SetFontScale(0.6);
  return ret;
}

bool Gui::Label(const std::string& str, bool selectable) {
  bool ret = false;
  // Draw on Same layer as buttons
  // cause this way we can handle all text in a single drawcall ;)
  PD::fvec2 pos = pPos;
  PD::fvec2 size = pGui->pCurrentFont->GetTextBounds(str, pGui->pFontScale);
  pNorm(size);
  pAlignPos(pAlignment, pos, size);
  pPos.y += size.y + pPad.y;
  pGui->Layer(4);
  pGui->DrawTextEx(p2Screen(pos), str, 0xffffffff, LiTextFlags_Shaddow);
  return ret;
}

void Gui::GuiSlider(const std::string& str, float& v) {
  pGui->Layer(3);
  PD::fvec2 pos = pPos;
  PD::fvec2 size(200 * 1.3, 20 * 1.3);
  pNorm(size);
  pPos.y += size.y + pPad.y;
  pAlignPos(pAlignment, pos, size);
  pTexElem(pTexWidgets, p2Screen(pos), p2Screen(size), GuiWidget_ButtonDead);
  pTexElem(pTexWidgets, p2Screen(pos) + PD::fvec2(50, 0),
           PD::fvec2(6, 20) * 1.3, GuiWidget_SDL);
  pTexElem(pTexWidgets, p2Screen(pos) + PD::fvec2(60, 0),
           PD::fvec2(6, 20) * 1.3, GuiWidget_SDR);
  pGui->Layer(4);
  pGui->SetFontScale(0.6 * 1.3);
  pGui->DrawTextEx(p2Screen(pos) + PD::fvec2(0, -1), str, 0xffffffff,
                   LiTextFlags_AlignMid | LiTextFlags_Shaddow, p2Screen(size));
  pGui->SetFontScale(0.6);
}

void Gui::DirPadding(PD::u32 dir, float pad) {
  if (dir & 1) {
    pObjPad.Pad.y = pad / pSize.y;
    pObjPad.Dir |= 1;
  }
  if (dir & 2) {
    pObjPad.Pad.z = pad / pSize.x;
    pObjPad.Dir |= 2;
  }
  if (dir & 4) {
    pObjPad.Pad.w = pad / pSize.y;
    pObjPad.Dir |= 4;
  }
  if (dir & 8) {
    pObjPad.Pad.x = pad / pSize.x;
    pObjPad.Dir |= 8;
  }
}

void Gui::pTexElem(PD::Li::Texture::Ref tex, PD::fvec2 p, PD::fvec2 s,
                   PD::fvec4 c) {
  auto ttex = PD::Li::Texture::New();
  ttex->CopyFrom(tex);
  ttex->UV = PD::fvec4(static_cast<float>(c.x) / ttex->Size.x,
                       1.f - static_cast<float>(c.y) / ttex->Size.y,
                       static_cast<float>(c.x + c.z) / ttex->Size.x,
                       1.f - static_cast<float>(c.y + c.w) / ttex->Size.y);
  ttex->Size.x = c.z;
  ttex->Size.y = c.w;
  pGui->DrawTexture(ttex);
  pGui->DrawRectFilled(p, s, 0xffffffff);
  pGui->DrawSolid();
}

void Gui::pAlignPos(PD::u32 a, PD::fvec2& pos, PD::fvec2 size) {
  if (a & Align_Left) {
    if (pObjPad.Dir & 8) {
      pos.x += pObjPad.Pad.x;
    }
  } else if (a & Align_Center) {
    pos.x = 0.5 - (size.x * 0.5) + pos.x;
  } else if (a & Align_Right) {
    pos.x = 1.f - size.x - pos.x;
    if (pObjPad.Dir & 2) {
      pos.x -= pObjPad.Pad.z;
    }
  }
  if (a & Align_Top) {
    if (pObjPad.Dir & 1) {
      pos.y += pObjPad.Pad.y;
    }
  } else if (a & Align_Mid) {
    pos.y = 0.5 - (size.y * 0.5) - pos.y;
  } else if (a & Align_Bot) {
    pos.y = 1.f - size.y - pos.y;
    if (pObjPad.Dir & 4) {
      pos.y -= pObjPad.Pad.w;
    }
  }
}
}  // namespace CN