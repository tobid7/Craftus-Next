#include <gui/TitleMenu.h>

#include <gui/Gui.h>
#include <gui/SpriteBatch.h>

#include <vec/vec.h>

#include <rendering/VertexFmt.h>

#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include <entity/Player.h>

#include <mpack/mpack.h>

#include <3ds.h>

#include <GameStates.h>
#include <gui/OptionsMenu.h>

extern bool forcequit;
extern GameState gamestate;

bool cancelled4 = false;
bool worlds = false;
bool options = false;

static int scroll = 0;
static float velocity = 0.f;
static int selectedWorld = -1;

static float max_velocity = 20.f;

bool nu;
void Title_Deinit() { /*Nothing*/
}

bool warning = true;
char *lines[17] = {
    "WARNING",
    "This Game is very Buggy.",
	"Problem 1: The Game has",
	"a Problem with memory",
	"leaks. If the Linear",
	"Space is below 5kb the",
	"game will show a Crash",
	"Message to prevent You",
	"from loosing Your world.",
	"This does not always",
	"work on old3ds systems.",
	"There are problems with",
	"the Inventory too.",
	"You are always able to",
	"acess this Message by",
	"tapping onto the Info",
	"Button in the Main Menu.",
};

void Title_Init() {}

void Title_Render() {
  if (warning) {
    SpriteBatch_SetScale(2);
    int movementX = 0, movementY = 0;
    Gui_GetCursorMovement(&movementX, &movementY);
    if (Gui_IsCursorInside(0, 0, 160, 2 * 32)) {
      velocity += movementY / 2.f;
      velocity = CLAMP(velocity, -max_velocity, max_velocity);
    }
    scroll += velocity;
    velocity *= 0.75f;
    if (ABS(velocity) < 0.001f)
      velocity = 0.f;

    int maximumSize = CHAR_HEIGHT * 2 * 17;
    if (scroll < -maximumSize)
      scroll = -maximumSize;
    if (scroll > 0)
      scroll = 0;
    SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
    for (int i = 0; i < 160 / 32 + 1; i++) {
      for (int j = 0; j < 120 / 32 + 1; j++) {
        bool overlay = false;
        SpriteBatch_PushQuadColor(i * 32, j * 32, overlay ? -4 : -10, 32, 32, 0,
                                  0, 32, 32,
                                  overlay ? INT16_MAX : SHADER_RGB(12, 12, 12));
      }
    }
    const char *line;
    for (size_t i = 0; i < 17; i++) {
      int y = i * (CHAR_HEIGHT + CHAR_HEIGHT) + 10 + scroll;
      SpriteBatch_PushText(20, y, -6, INT16_MAX, true, INT_MAX, NULL, "%s",
                           lines[i], movementY);
    }
	Gui_Offset(0, 3 * 32 + 5 + BUTTON_TEXT_PADDING);
	Gui_BeginRowCenter(Gui_RelativeWidth(0.95f), 2);
	if(Gui_Button(true, 1.f, "OK"))
	{
		warning = false;
	}
  } else {
    SpriteBatch_SetScale(2);

    SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
    for (int i = 0; i < 160 / 32 + 1; i++) {
      for (int j = 0; j < 120 / 32 + 1; j++) {
        bool overlay = false;
        SpriteBatch_PushQuadColor(i * 32, j * 32, overlay ? -4 : -10, 32, 32, 0,
                                  0, 32, 32,
                                  overlay ? INT16_MAX : SHADER_RGB(12, 12, 12));
      }
    }

    Gui_Offset(0, 10);
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    worlds = Gui_Button(true, 1.f, "Singleplayer");
    Gui_EndRow();
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    nu = Gui_Button(false, 1.f, "Multiplayer");
    Gui_EndRow();

    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    options = Gui_Button(true, 1.0f, "Options");
	Gui_EndRow();

	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    if(Gui_Button(true, 1.0f, "Info"))
	{
		warning = true;
	}
	Gui_EndRow();

    //Gui_VerticalSpace(Gui_RelativeHeight(0.4));
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
    cancelled4 = Gui_Button(true, 1.0f, "Quit");
  }
}

bool Title_Update(Player player) {

  if (options) {
    options = false;
    Options_Init(GameState_Title);
    gamestate = GameState_Options;
    return true;
  }

  if (worlds) {
    options = false;
    gamestate = GameState_SelectWorld;
    return true;
  }

  if (cancelled4) {
    cancelled4 = false;
    forcequit = true;
    return true;
  }

  return false;
}
