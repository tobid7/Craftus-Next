#include <3ds.h>
#include <entity/Player.h>
#include <gui/DebugUI.h>
#include <gui/Gui.h>
#include <gui/OptionsMenu.h>
#include <gui/SpriteBatch.h>
#include <ini/ini.h>
#include <mpack/mpack.h>
#include <rendering/VertexFmt.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <vec/vec.h>

extern GameState gamestate;

GameState from;

bool frompause = false;

bool cancelled = false;
bool cancelled2 = false;

int j;
int fov;

static int scroll = 0;
static float velocity = 0.f;

static float max_velocity = 20.f;

void Options_Init(GameState from_) {
  if (from_ == GameState_Pause) frompause = true;
  from = from_;
}

void Options_Deinit() { /*Nothing*/ }

typedef enum {
  MenuState_Main,
  MenuState_Graphics,
  MenuState_Sound,
  MenuState_Input,
  MenuState_Licenses,
  MenuState_TempUnused,
} MenuState2;

extern bool showDebugInfo;

bool graphicssettings = false;
bool soundsettings = false;
bool licenses = false;

bool reload = false;
// static char* diffstr[]={"Peaceful", "Easy", "Normal", "Hard"};

char* licenses_txt = NULL;
size_t licenses_txt_lines = 1;

static MenuState2 menustate2 = MenuState_Main;

void Options_Render() {
  if (licenses_txt == NULL) {
    licenses_txt = Lgy_File2Str("romfs:/licenses.txt", &licenses_txt_lines);
    if (licenses_txt == NULL) {
      Lgy_Crash("Unable to load licenses...");
    }
  }
  SpriteBatch_SetScale(2);

  SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
  for (int i = 0; i < 160 / 32 + 1; i++) {
    for (int j = 0; j < 120 / 32 + 1; j++) {
      bool overlay = j >= 2 && menustate2 == MenuState_TempUnused;
      SpriteBatch_PushQuadColor(i * 32, j * 32, overlay ? -4 : -10, 32, 32, 0,
                                0, 32, 32,
                                overlay ? INT16_MAX : SHADER_RGB(12, 12, 12));
    }
  }

  if (menustate2 == MenuState_Main) {
    Gui_Offset(0, 10);
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    graphicssettings = Gui_Button(true, 1.f, "Graphics");
    Gui_EndRow();
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    soundsettings = Gui_Button(true, 1.f, "Sound");
    Gui_EndRow();
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    soundsettings = Gui_Button(true, 1.f, "Controls");
    Gui_EndRow();
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    licenses = Gui_Button(true, 1.f, "Licenses");
    Gui_EndRow();

    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    cancelled2 = Gui_Button(true, 1.0f, "Back");
  } else if (menustate2 == MenuState_Graphics) {
    Gui_Offset(8, 10);
    Gui_BeginRow(Gui_RelativeWidth(0.479f), 2);
    if (Gui_Button(true, 1.f, "Fov: %i", (int)cn_options.Fov)) {
      cn_options.Fov += 1.f;
      if (cn_options.Fov > 110.f) cn_options.Fov = 30.f;
    }
    if (Gui_Button(true, 1.f, "MipMap: %i", (int)cn_options.MipMapLvl)) {
      reload = true;
      cn_options.MipMapLvl += 1;
      if (cn_options.MipMapLvl > 4) cn_options.MipMapLvl = 0;
    }
    Gui_EndRow();
    Gui_Offset(0, 35);
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9), 1);
    if (Gui_Button(true, 1.0f, "Hand: %s",
                   cn_options.Hand ? "true" : "false")) {
      cn_options.Hand = !cn_options.Hand;
    }

    Gui_EndRow();
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9), 1);
    if (Gui_Button(true, 1.0f, "Clouds: %s",
                   cn_options.Clouds ? "true" : "false")) {
      cn_options.Clouds = !cn_options.Clouds;
    }
    Gui_EndRow();
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9), 1);
    if (Gui_Button(true, 1.0f, "View Bobbing: %s",
                   cn_options.ViewBobbing ? "On" : "Off")) {
      cn_options.ViewBobbing = !cn_options.ViewBobbing;
    }
    Gui_EndRow();
    // Gui_VerticalSpace(Gui_RelativeHeight(0.2f));

    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    cancelled2 = Gui_Button(true, 1.f, "Back");
  } else if (menustate2 == MenuState_Licenses) {
    SpriteBatch_SetScale(2);
    int movementX = 0, movementY = 0;
    Gui_GetCursorMovement(&movementX, &movementY);
    if (Gui_IsCursorInside(0, 0, 160, 2 * 32)) {
      velocity += movementY / 2.f;
      velocity = CLAMP(velocity, -max_velocity, max_velocity);
    }
    scroll += velocity;
    velocity *= 0.75f;
    if (ABS(velocity) < 0.001f) velocity = 0.f;

    int maximumSize = CHAR_HEIGHT * 2 * (licenses_txt_lines*3);
    if (scroll < -maximumSize) scroll = -maximumSize;
    if (scroll > 0) scroll = 0;
    SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
    for (int i = 0; i < 160 / 32 + 1; i++) {
      for (int j = 0; j < 120 / 32 + 1; j++) {
        bool overlay = false;
        SpriteBatch_PushQuadColor(i * 32, j * 32, overlay ? -4 : -10, 32, 32, 0,
                                  0, 32, 32,
                                  overlay ? INT16_MAX : SHADER_RGB(12, 12, 12));
      }
    }
    SpriteBatch_PushText(5, 5 + scroll, -6, INT16_MAX, true, 150, NULL,
                         licenses_txt);
    // const char *line;
    // for (size_t i = 0; i < 8; i++) {
    //   int y = i * (CHAR_HEIGHT + CHAR_HEIGHT) + 10 + scroll;
    //   SpriteBatch_PushText(20, y, -6, INT16_MAX, true, INT_MAX, NULL, "%s",
    //                        lines[i], movementY);
    // }
    Gui_Offset(0, 3 * 32 + 5 + BUTTON_TEXT_PADDING);
    Gui_BeginRowCenter(Gui_RelativeWidth(0.95f), 2);
    cancelled2 = Gui_Button(true, 1.f, "Back");
  } else if (menustate2 == MenuState_Sound) {
    Gui_Offset(0, 10);
    Gui_BeginRow(Gui_RelativeWidth(0.9), 1);
    Gui_Label(1.0f, true, INT16_MAX, true, "NOT AVAILABLE");
    Gui_EndRow();

    Gui_VerticalSpace(Gui_RelativeHeight(0.7f));
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    cancelled2 = Gui_Button(true, 1.0f, "Back");
  }
}

bool Options_Update(Player player) {
  if (cancelled) {
    menustate2 = MenuState_Main;
    cancelled = false;
    return false;
  }

  if (cancelled2) {
    if (reload) {
      Block_Deinit();
      Block_Init();
      DebugUI_Log("Reloaded Blocks!");
      reload = false;
    }
    cancelled2 = false;
    menustate2 = MenuState_Main;
    gamestate = from;
    frompause = false;
    Lgy_GameOptionsSave();
    return true;
  }

  if (graphicssettings) {
    menustate2 = MenuState_Graphics;
  }
  if (soundsettings) {
    menustate2 = MenuState_Sound;
  }
  if (licenses) {
    menustate2 = MenuState_Licenses;
  }

  return false;
}
