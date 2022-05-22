#include <gui/DeathMenu.h>

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

void Death_Init() {
	
}

bool cancelled3 = false;

void Death_Deinit() { /*Nothing*/ }

void Death_Render() {
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
	Gui_Label(1.0f, true, INT16_MAX, true, "You Died");
	Gui_EndRow();
	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	Gui_Label(1.0f, true, INT16_MAX, true, "By ...");
	Gui_EndRow();
	
	Gui_VerticalSpace(Gui_RelativeHeight(0.4));
	Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 1);
	cancelled3 = Gui_Button(true, 1.0f, "Quit");
	
}



bool Death_Update(Player player) {
    
    if (cancelled3)
    {
        cancelled3 = false;
        
        return true;
    }

	return false;
}
