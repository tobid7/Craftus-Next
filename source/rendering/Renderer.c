#include <rendering/Renderer.h>

#include <blocks/Block.h>
#include <gui/DebugUI.h>
#include <gui/Gui.h>
#include <gui/Inventory.h>
#include <gui/SpriteBatch.h>
#include <gui/WorldSelect.h>
#include <rendering/Camera.h>
#include <rendering/Clouds.h>
#include <rendering/Cursor.h>
#include <rendering/PolyGen.h>
#include <rendering/TextureMap.h>
#include <rendering/WorldRenderer.h>
#include <gui/CrashMenu.h>
#include <gui/OptionsMenu.h>
#include <gui/TitleMenu.h>
#include <gui/PauseMenu.h>
#include <gui/DeathMenu.h>

#include <citro3d.h>

#include "gui_shbin.h"
#include "world_shbin.h"

#define DISPLAY_TRANSFER_FLAGS                                                                                                          \
	(GX_TRANSFER_FLIP_VERT(0) | GX_TRANSFER_OUT_TILED(0) | GX_TRANSFER_RAW_COPY(0) | GX_TRANSFER_IN_FORMAT(GX_TRANSFER_FMT_RGBA8) | \
	 GX_TRANSFER_OUT_FORMAT(GX_TRANSFER_FMT_RGB8) | \
GX_TRANSFER_SCALING(GX_TRANSFER_SCALE_NO))

extern bool frompause;

#define CLEAR_COLOR_SKY 0x90d9ffff
extern u32 skycol;
//#define CLEAR_COLOR_SKY 0x06070cff
#define CLEAR_COLOR_BLACK 0x000000ff

static C3D_RenderTarget* renderTargets[2];
static C3D_RenderTarget* lowerScreen;

static DVLB_s *world_dvlb, *gui_dvlb;
static shaderProgram_s world_shader, gui_shader;
static int world_shader_uLocProjection, gui_shader_uLocProjection;

static C3D_AttrInfo world_vertexAttribs, gui_vertexAttribs;

static C3D_Tex logoTex;
static C3D_Tex bgtex;

static World* world;
static Player* player;
static WorkQueue* workqueue;

static GameState* gamestate;

extern bool showDebugInfo;

extern bool rclouds;

void Renderer_Init(World* world_, Player* player_, WorkQueue* queue, GameState* gamestate_) {
	world = world_;
	player = player_;
	workqueue = queue;
	gamestate = gamestate_;

	C3D_Init(C3D_DEFAULT_CMDBUF_SIZE);

	renderTargets[0] = C3D_RenderTargetCreate(240, 400, GPU_RB_RGBA8, GPU_RB_DEPTH16);
	renderTargets[1] = C3D_RenderTargetCreate(240, 400, GPU_RB_RGBA8, GPU_RB_DEPTH16);
	C3D_RenderTargetSetOutput(renderTargets[0], GFX_TOP, GFX_LEFT, DISPLAY_TRANSFER_FLAGS);
	C3D_RenderTargetSetOutput(renderTargets[1], GFX_TOP, GFX_RIGHT, DISPLAY_TRANSFER_FLAGS);

	lowerScreen = C3D_RenderTargetCreate(240, 320, GPU_RB_RGBA8, GPU_RB_DEPTH16);
	C3D_RenderTargetSetOutput(lowerScreen, GFX_BOTTOM, GFX_LEFT, DISPLAY_TRANSFER_FLAGS);

	world_dvlb = DVLB_ParseFile((u32*)world_shbin, world_shbin_size);
	shaderProgramInit(&world_shader);
	shaderProgramSetVsh(&world_shader, &world_dvlb->DVLE[0]);
	world_shader_uLocProjection = shaderInstanceGetUniformLocation(world_shader.vertexShader, "projection");

	gui_dvlb = DVLB_ParseFile((u32*)gui_shbin, gui_shbin_size);
	shaderProgramInit(&gui_shader);
	shaderProgramSetVsh(&gui_shader, &gui_dvlb->DVLE[0]);
	gui_shader_uLocProjection = shaderInstanceGetUniformLocation(gui_shader.vertexShader, "projection");

	AttrInfo_Init(&world_vertexAttribs);
	AttrInfo_AddLoader(&world_vertexAttribs, 0, GPU_SHORT, 3);
	AttrInfo_AddLoader(&world_vertexAttribs, 1, GPU_SHORT, 2);
	AttrInfo_AddLoader(&world_vertexAttribs, 2, GPU_UNSIGNED_BYTE, 3);
	AttrInfo_AddLoader(&world_vertexAttribs, 3, GPU_UNSIGNED_BYTE, 3);

	AttrInfo_Init(&gui_vertexAttribs);
	AttrInfo_AddLoader(&gui_vertexAttribs, 0, GPU_SHORT, 3);
	AttrInfo_AddLoader(&gui_vertexAttribs, 1, GPU_SHORT, 3);

	PolyGen_Init(world, player_);

	WorldRenderer_Init(player, world, workqueue, world_shader_uLocProjection);

	SpriteBatch_Init(gui_shader_uLocProjection);

	Gui_Init();

	C3D_CullFace(GPU_CULL_BACK_CCW);

	Block_Init();

	//Item_Init();

	Texture_Load(&logoTex, "romfs:/assets/textures/gui/title/craftus.png");
	Texture_Load(&bgtex, "romfs:/assets/textures/gui/bg.png");
}
void Renderer_Deinit() {
	C3D_TexDelete(&logoTex);

	C3D_TexDelete(&bgtex);

	Item_Deinit();

	Block_Deinit();

	PolyGen_Deinit();

	WorldRenderer_Deinit();

	Gui_Deinit();

	SpriteBatch_Deinit();

	shaderProgramFree(&gui_shader);
	DVLB_Free(gui_dvlb);
	shaderProgramFree(&world_shader);
	DVLB_Free(world_dvlb);

	C3D_Fini();
}

void Renderer_Render() {

	float iod = osGet3DSliderState() * PLAYER_HALFEYEDIFF;

	C3D_FrameBegin(C3D_FRAME_SYNCDRAW);

	if (*gamestate == GameState_Playing || *gamestate == GameState_Pause || frompause) PolyGen_Harvest();

	for (int i = 0; i < 2; i++) {
		C3D_RenderTargetClear(renderTargets[i], C3D_CLEAR_ALL, skycol, 0);
		C3D_FrameDrawOn(renderTargets[i]);

		SpriteBatch_StartFrame(400, 240);

		C3D_TexEnv* env = C3D_GetTexEnv(0);
		C3D_TexEnvInit(env);
		C3D_TexEnvSrc(env, C3D_Both, GPU_TEXTURE0, GPU_PRIMARY_COLOR, 0);
		C3D_TexEnvFunc(env, C3D_Both, GPU_MODULATE);

		C3D_BindProgram(&world_shader);
		C3D_SetAttrInfo(&world_vertexAttribs);

		if (*gamestate == GameState_Playing || *gamestate == GameState_Pause || frompause) {
			C3D_TexBind(0, Block_GetTextureMap());

			WorldRenderer_Render(!i ? -iod : iod);

			SpriteBatch_BindGuiTexture(GuiTexture_Widgets);
			if (iod == 0.f) SpriteBatch_PushQuad(200 / 2 - 16 / 2, 120 / 2 - 16 / 2, 0, 16, 16, 240, 0, 16, 16);


			/*if (gamestate == GameState_Pause || (gamestate == GameState_Options && frompause))
			{
				SpriteBatch_PushSingleColorQuad(0, 0, 0, 400, 240, 0);
			}*/
			
            //if (showDebugInfo) DebugUI_Draw();
			/*SpriteBatch_BindGuiTexture(GuiTexture_Icons);
			SpriteBatch_SetScale(2);
			for (int h = 0; h < 10; h++)
			{
				if (iod == 0.f) SpriteBatch_PushQuad(h*8 + 1, 110 , 0, 9, 9, 16, 0, 9, 9);
				
				if (h*2 <= player->hp) {if (iod == 0.f) SpriteBatch_PushQuad(h*8 + 2, 110 , 0, 9, 9, 53, 0, 9, 9);}
				//if (h*2 <= player->hp) {if (iod == 0.f) SpriteBatch_PushQuad(h*8 + 2, 110 , 0, 9, 9, 53, 0, 9, 9);}
				
			}
			//if (iod == 0.f) SpriteBatch_PushQuad(2, 110 , 0, 8, 8, 53, 0, 8, 8);
			
			*/
			
		}
		else if (*gamestate == GameState_SelectWorld || (*gamestate == GameState_Options && frompause == false) || *gamestate == GameState_Title) {
			C3D_Mtx projection;
			Mtx_PerspStereoTilt(&projection, C3D_AngleFromDegrees(90.f), ((400.f) / (240.f)), 0.22f, 4.f * CHUNK_SIZE,
					    !i ? -iod : iod, 3.f, false);

			C3D_Mtx view;
			Mtx_Identity(&view);
			Mtx_Translate(&view, 0.f, -70.f, 0.f, false);

			Mtx_RotateX(&view, -C3D_AngleFromDegrees(30.f), true);

			C3D_Mtx vp;
			Mtx_Multiply(&vp, &projection, &view);
			//SpriteBatch_BindGuiTexture(GuiTexture_TBG);
			//SpriteBatch_PushQuad(0, 0, 0, 400, 240, 0, 0, 400, 240);
			SpriteBatch_SetScale(1);

			if (rclouds) Clouds_Render(world_shader_uLocProjection, &vp, world, 0.f, 0.f);

			SpriteBatch_BindTexture(&logoTex);

			SpriteBatch_SetScale(1);
			SpriteBatch_PushQuad(128/2, -10, 0, 256, 64, 0, 0, 128, 32);
			SpriteBatch_SetScale(2);
			SpriteBatch_PushText(0, 110, 0, INT16_MAX, true, INT_MAX, NULL, "v" CRAFTUS_VERSION_STR);
			//if (showDebugInfo) DebugUI_Draw();
		}

		C3D_BindProgram(&gui_shader);
		C3D_SetAttrInfo(&gui_vertexAttribs);
		
		SpriteBatch_Render(GFX_TOP);
		
		if (iod <= 0.f) break;
	}

	C3D_RenderTargetClear(lowerScreen, C3D_CLEAR_ALL, CLEAR_COLOR_BLACK, 0);
	C3D_FrameDrawOn(lowerScreen);

	SpriteBatch_StartFrame(320, 240);

	if (*gamestate == GameState_SelectWorld)
	{
		WorldSelect_Render();
        if (showDebugInfo) DebugUI_Draw();
	}

	else if (*gamestate == GameState_Options)
	{
		Options_Render();
		if (showDebugInfo) DebugUI_Draw();
	}
	else if (*gamestate == GameState_Crash)
	{
		Crash_Render();
		if (showDebugInfo) DebugUI_Draw();
	}
	else if (*gamestate == GameState_Title)
	{
		Title_Render();
		if (showDebugInfo) DebugUI_Draw();
	}
	else if (*gamestate == GameState_Pause)
	{
		Pause_Render();
		if (showDebugInfo) DebugUI_Draw();
	}
	else if (*gamestate == GameState_Death)
	{
		Death_Render();
		if (showDebugInfo) DebugUI_Draw();
	}
	else {
		SpriteBatch_SetScale(2);
		player->quickSelectBarSlots = Inventory_QuickSelectCalcSlots(160);
		Inventory_DrawQuickSelect(160 / 2 - Inventory_QuickSelectCalcWidth(player->quickSelectBarSlots) / 2,
					  120 - INVENTORY_QUICKSELECT_HEIGHT, player->quickSelectBar, player->quickSelectBarSlots,
					  &player->quickSelectBarSlot);
		player->inventorySite = Inventory_Draw(16, 0, 160, player->inventory, sizeof(player->inventory) / sizeof(ItemStack),player->inventorySite);
		if (showDebugInfo) DebugUI_Draw();
		
	}

	Gui_Frame();

	SpriteBatch_Render(GFX_BOTTOM);

	C3D_FrameEnd(0);
}

void Renderer_Update(Player* player_, World* world_)
{
	player = player_;
	world = world_;
	WorldRenderer_Update(player_, world_);
}
