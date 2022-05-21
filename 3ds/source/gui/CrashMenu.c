#include <gui/CrashMenu.h>

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

const char *crashtext;

void Crash_Init(const char* crash, ...) {
	crashtext = crash;
}

bool cancelled = false;
bool cancelled2 = false;

void Crash_Deinit() { /*Nothing*/ }

void Crash_Render() {
	SpriteBatch_SetScale(2);

	SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
	for (int i = 0; i < 160 / 32 + 1; i++) {
		for (int j = 0; j < 120 / 32 + 1; j++) {
			bool overlay = j >= 2 && menustate2 == MenuState_TempUnused;
			SpriteBatch_PushQuadColor(i * 32, j * 32, overlay ? -4 : -10, 32, 32, 0, 0, 32, 32,
						  overlay ? INT16_MAX : SHADER_RGB(12, 12, 12));
		}
	}

	
	Gui_Offset(0, 10);
    Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	Gui_Label(1.0f, true, INT16_MAX, true, "Game Crashed!");
	Gui_EndRow();
	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	Gui_Label(1.0f, true, INT16_MAX, true, crashtext);
	Gui_EndRow();
	
	Gui_VerticalSpace(Gui_RelativeHeight(0.35));
	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	cancelled2 = Gui_Button(1.0f, "Quit");
	
}



bool Crash_Update(Player player) {
    
    if (cancelled2)
    {
        cancelled2 = false;
        
        return true;
    }

	return false;
}
