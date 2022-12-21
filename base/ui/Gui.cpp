#include <ui/Gui.hpp>

namespace Base {
namespace Gui {
static int llc_w;
static int llc_h;
static int llc_scale;
BaseTexture LLC_Widgets;

void Init(int w, int h) {
  llc_w = w;
  llc_h = h;
  LLC_Widgets.Load("res/mcpack/assets/minecraft/textures/gui/widgets.png");
}

void UpdateScreenSize(int w, int h) {
  llc_w = w;
  llc_h = h;
}

void SetUiScale(float scale) { llc_scale = scale; }

void DrawButton(int flg, float x, float y) {

  if (flg & Base::Gui::ButtonFLG_NONE) {
  }
  if (flg & Base::Gui::ButtonFLG_HOVERED) {
  }
  if (flg & Base::Gui::ButtonFLG_CLICKED) {
  }
}

void DrawTextureQuad(float x, float y, float u1, float v1, float u2, float v2,
                     BaseTexture tex) {}

void DrawQuad(float x, float y, float w, float h, color_t color) {}
} // namespace Gui
} // namespace Base