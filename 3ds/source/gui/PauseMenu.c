#include <gui/PauseMenu.h>

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

extern GameState gamestate;

extern float dt;

bool cancelled5 = false;
void Pause_Init() {
     cancelled5 = false;
}


bool options55 = false;

void Pause_Deinit() { /*Nothing*/ }

void Pause_Render() {
	SpriteBatch_SetScale(2);

	SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
	for (int i = 0; i < 160 / 32 + 1; i++) {
		for (int j = 0; j < 120 / 32 + 1; j++) {
			bool overlay = false;
			SpriteBatch_PushQuadColor(i * 32, j * 32, overlay ? -4 : -10, 32, 32, 0, 0, 32, 32,
						  overlay ? INT16_MAX : SHADER_RGB(12, 12, 12));
		}
	}

	
	Gui_Offset(0, 10);
	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	options55 = Gui_Button(true, 1.f, "Options");
	Gui_EndRow();
	/*Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	nu = Gui_Button(false, 1.f, "Multiplayer");
	Gui_EndRow();

	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	options = Gui_Button(true, 1.0f, "Options");*/
	
	Gui_VerticalSpace(Gui_RelativeHeight(0.4));
	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	cancelled5 = Gui_Button(true, 1.0f, "Back To Game");
	
}



bool Pause_Update(Player player) {
    
	dt = 0.f;

	if (options55)
	{
		Options_Init(GameState_Pause);
		gamestate = GameState_Options;
                options55 = false;
	}

    if (cancelled5)
    {
        gamestate = GameState_Playing;
        return true;
    }
    cancelled5 = false;

	return false;
}
