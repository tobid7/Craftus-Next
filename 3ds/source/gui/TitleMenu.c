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

void Title_Init() {
	
}

bool cancelled4 = false;
bool worlds = false;
bool options = false;

bool nu;
void Title_Deinit() { /*Nothing*/ }

void Title_Render() {
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
	worlds = Gui_Button(true, 1.f, "Singleplayer");
	Gui_EndRow();
	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	nu = Gui_Button(false, 1.f, "Multiplayer");
	Gui_EndRow();

	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	options = Gui_Button(true, 1.0f, "Options");
	
	Gui_VerticalSpace(Gui_RelativeHeight(0.4));
	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	cancelled4 = Gui_Button(true, 1.0f, "Quit");
	
}



bool Title_Update(Player player, TitleResult res) {
    
    if (options)
    {
        options = false;
        res.settings = true;
        return true;
    }

    if (worlds)
    {
        options = false;
        res.worlds = true;
        return true;
    }

    if (cancelled4)
    {
        cancelled4 = false;
        res.exit_ = true;
        return true;
    }

	return false;
}
