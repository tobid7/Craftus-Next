#include <gui/OptionsMenu.h>

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

void Options_Init() {
	//
}

bool cancelled = false;
bool cancelled2 = false;

void Options_Deinit() { /*Nothing*/ }

typedef enum { MenuState_Main, MenuState_Graphics, MenuState_Sound, MenuState_Input, MenuState_TempUnused } MenuState2;

float fovscale2 = 1.0f;

extern float fovScale_;

extern bool showDebugInfo;

extern bool rclouds;

extern bool rhandr;

bool graphicssettings = false;

bool soundsettings = false;
//static char* diffstr[]={"Peaceful", "Easy", "Normal", "Hard"};

static MenuState2 menustate2 = MenuState_Main;

void Options_Render() {
	SpriteBatch_SetScale(2);

	SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
	for (int i = 0; i < 160 / 32 + 1; i++) {
		for (int j = 0; j < 120 / 32 + 1; j++) {
			bool overlay = j >= 2 && menustate2 == MenuState_TempUnused;
			SpriteBatch_PushQuadColor(i * 32, j * 32, overlay ? -4 : -10, 32, 32, 0, 0, 32, 32,
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

		Gui_VerticalSpace(Gui_RelativeHeight(0.35));

		Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
		cancelled2 = Gui_Button(true, 1.0f, "Main Menu");
	} else if (menustate2 == MenuState_Graphics) {
		Gui_Offset(0, 10);
		Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
		/*if (Gui_Slider(30, 110, 70, 1.f, fovScale_, "Fov: %f", 60 + 12 * fovScale_))
        {
            fovScale_+=0.1f;
			if (fovScale_ >=4.2f) fovScale_ = 0.0f;
        }*/
                if (Gui_Button(true, 1.f, fovScale_, "Fov: %f", 30 + 12 * fovScale_))
        {
            fovScale_+=0.1f;
			if (fovScale_ >=6.67f) fovScale_ = 0.0f;
        }
		Gui_EndRow();
        Gui_BeginRowCenter(Gui_RelativeWidth(0.9), 1);
        if (Gui_Button(true, 1.0f, "Hand: %s", rhandr ? "true" : "false"))
        {
            rhandr = !rhandr;
        }
        
        Gui_EndRow();
        Gui_BeginRowCenter(Gui_RelativeWidth(0.9), 1);
        if (Gui_Button(true, 1.0f, "Clouds: %s", rclouds ? "true" : "false"))
        {
            rclouds = !rclouds;
        }
        Gui_EndRow();
		Gui_VerticalSpace(Gui_RelativeHeight(0.2f));

		Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
		cancelled2 = Gui_Button(true, 1.f, "Main Menu");
	} else if (menustate2 == MenuState_Sound) {
		
        Gui_Offset(0, 10);
		Gui_BeginRow(Gui_RelativeWidth(0.9), 1);
		Gui_Label(1.0f, true, INT16_MAX, true, "NOT AVAILABLE");
		Gui_EndRow();

        Gui_VerticalSpace(Gui_RelativeHeight(0.7f));
		Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
		cancelled2 = Gui_Button(true, 1.0f, "Main Menu");
	}
}



bool Options_Update(Player player) {
	if (cancelled)
    {
        menustate2 = MenuState_Main;
        cancelled = false;
    }
    
    if (cancelled2)
    {
        cancelled2 = false;
        menustate2 = MenuState_Main;
        return true;
    }

    if (graphicssettings)
    {
        menustate2 = MenuState_Graphics;
    }

	if (soundsettings)
	{
		menustate2 = MenuState_Sound;
	}

	return false;
}
