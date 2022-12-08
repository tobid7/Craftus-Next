#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <3ds.h>

#include <GameStates.h>
#include <entity/Player.h>
#include <entity/PlayerController.h>
#include <entity/Damage.h>
#include <gui/DebugUI.h>
#include <gui/Gui.h>
#include <gui/WorldSelect.h>
#include <gui/OptionsMenu.h>
#include <rendering/PolyGen.h>
#include <rendering/Renderer.h>
#include <world/ChunkWorker.h>
#include <world/World.h>
#include <world/savegame/SaveManager.h>
#include <world/savegame/SuperChunk.h>
#include <world/worldgen/SmeaGen.h>
#include <world/worldgen/SuperFlatGen.h>
#include <world/worldgen/FlatBedrockGen.h>
#include <world/worldgen/DefaultGen.h>
#include <misc/Crash.h>
#include <gui/CrashMenu.h>
#include <gui/TitleMenu.h>
#include <gui/PauseMenu.h>
#include <gui/DeathMenu.h>

#include <sino/sino.h>
#include <citro3d.h>

bool showDebugInfo = false;

bool savedcrash = false;

bool forcequit;

float dt = 0.f;

float dt__ = 0.f;

bool Save__ = false;

void releaseWorld(ChunkWorker* chunkWorker, SaveManager* savemgr, World* world) {
	for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
		for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
			World_UnloadChunk(world, world->chunkCache[i][j]);
		}
	}
	ChunkWorker_Finish(chunkWorker);
	World_Reset(world);

	SaveManager_Unload(savemgr);
}
GameState gamestate = GameState_Title;
int main() {
	
	//printf("gfxinit\n");
        //Log("Init Gfx\n");
	gfxInitDefault();
        //Log("New3dsSpeed\n");
	// Enable N3DS 804MHz operation, where available
	osSetSpeedupEnable(true);
        //Log("Crate Playbackinfo\n");
	struct playbackInfo_t soundg;
	//consoleInit(GFX_BOTTOM, NULL);
        //Log("Enable 3d\n");
	gfxSet3D(true);
	//printf("romfsinit\n");
        //Log("Init romfs\n");
	romfsInit();

        //Log("Create Generators\n");
	SuperFlatGen flatGen;
	SmeaGen smeaGen;
	FlatBedrockGen bdgen;
	DefaultGen dgen;
        //Log("Init SuperChunk\n");
	SuperChunk_InitPools();

        //Log("Init SaveManager\n");
	SaveManager_InitFileSystem();

	ChunkWorker chunkWorker;
        //Log("Init Chunkworker\n");
	ChunkWorker_Init(&chunkWorker);
        //Log("Add Generators\n");
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_PolyGen, (WorkerFuncObj){&PolyGen_GeneratePolygons, NULL, true});
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_BaseGen, (WorkerFuncObj){&SuperFlatGen_Generate, &flatGen, true});
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_BaseGen, (WorkerFuncObj){&FlatBedrockGen_Generate, &bdgen, true});
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_BaseGen, (WorkerFuncObj){&SmeaGen_Generate, &smeaGen, true});
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_BaseGen, (WorkerFuncObj){&DefaultGen_Generate, &dgen, true});
        //Log("Init noise\n");
	sino_init();

	World* world = (World*)malloc(sizeof(World));

	Player player;
	PlayerController playerCtrl;
        //Log("Setup Player\n");
	Player_Init(&player, world);
        //Log("Setup Player ctrl\n");
	PlayerController_Init(&playerCtrl, &player);
        
        //Log("Init SuperFlat\n");
	SuperFlatGen_Init(&flatGen, world);
        //Log("Init BedrockFlat\n");
	FlatBedrockGen_Init(&bdgen, world);
        //Log("Init Defaultgen\n");
	DefaultGen_Init(&dgen, world);
        //Log("Init smea\n");
	SmeaGen_Init(&smeaGen, world);

        //Log("Init Renderer\n");
	Renderer_Init(world, &player, &chunkWorker.queue, &gamestate);
	
        //Log("Init DebugUI\n");
	DebugUI_Init();

        //Log("Init WorldSel, Options\n");
	WorldSelect_Init();

	Options_Init(GameState_Title);

        //Log("Init Init World\n");
	World_Init(world, &chunkWorker.queue);

	SaveManager savemgr;
        //Log("Init SaveManager\n");
	SaveManager_Init(&savemgr, &player);
        //Log("Init Add Save Load\n");
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_Load, (WorkerFuncObj){&SaveManager_LoadChunk, &savemgr, true});
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_Save, (WorkerFuncObj){&SaveManager_SaveChunk, &savemgr, true});
         
        //Log("Init Setup fps dt calculator\n");
	uint64_t lastTime = svcGetSystemTick();
	float timeAccum = 0.f, fpsClock = 0.f;
	int frameCounter = 0, fps = 0;
	bool initBackgroundSound = true;
	while (aptMainLoop()) 
	{
		if (initBackgroundSound)
		{
			/*initBackgroundSound = false;
			BackgroundSound.background = true;
			char *soundfile = "romfs:/assets/sound/music/1.opus";
			BackgroundSound.path[0] = '\0';
			strncat(BackgroundSound.path, soundfile, sizeof(BackgroundSound.path) - 1);
			playopus(&BackgroundSound);*/
			//changeFile("romfs:/assets/sound/music/Minecraft.ogg", &soundg);
		}
		
		DebugUI_Text("%d FPS  Usage: CPU: %5.2f%% GPU: %5.2f%%", fps, C3D_GetProcessingTime() * 6.f,
		C3D_GetDrawingTime() * 6.f, C3D_GetCmdBufUsage() * 100.f, linearSpaceFree() / 1024 / 1024);
		DebugUI_Text("Buf: %5.2f%% Lin: %dkb", /*C3D_GetCmdBufUsage() * */100.f, linearSpaceFree() / 1024);
		DebugUI_Text("X: %f, Y: %f, Z: %f", f3_unpack(player.position));
		DebugUI_Text("DT: %f > TDRES: %f", dt__, dt__*60);
		

                if (linearSpaceFree() <= 5242880)
                {
                    //Crash("Not enough Memory!");
                    if (!savedcrash) 
                    {
                          releaseWorld(&chunkWorker, &savemgr, world);
                          savedcrash = true;
                    }
					Crash_Init("Out of Memory!");
					gamestate = GameState_Crash;
                }
		DebugUI_Text("HP: %i",player.hp);
		//DebugUI_Text("velocity: %f rndy: %f",player.velocity.y,player.rndy);
		//DebugUI_Text("Time: %i Cause: %c",dmg->time,dmg->cause);
		//DebugUI_Text("SX: %f SY: %f SZ: %f",player->spawnx,player->spawny,player->spawnz);
		//DebugUI_Text("Hunger: %i Hungertimer: %i",player.hunger,player.hungertimer);
		//DebugUI_Text("Gamemode: %i",player.gamemode);
		//DebugUI_Text("quickbar %i",player.quickSelectBarSlot);

		Renderer_Render();

		uint64_t currentTime = svcGetSystemTick();
		dt = ((float)(currentTime / (float)TICKS_PER_MSEC) - (float)(lastTime / (float)TICKS_PER_MSEC)) / 1000.f;
		lastTime = currentTime;
		timeAccum += dt;
		dt__ = dt;
		frameCounter++;
		fpsClock += dt;
		if (fpsClock >= 1.f) {
			fps = frameCounter;
			frameCounter = 0;
			fpsClock = 0.f;
		}

		hidScanInput();
		u32 keysheld = hidKeysHeld(), keysdown = hidKeysDown();
		if (keysdown & KEY_START || Save__) {
			if (gamestate == GameState_SelectWorld){
				gamestate = GameState_Title;}
			else if (gamestate == GameState_Playing || gamestate == GameState_Pause) {
				releaseWorld(&chunkWorker, &savemgr, world);
                                
				gamestate = GameState_SelectWorld;

				WorldSelect_ScanWorlds();

				lastTime = svcGetSystemTick();
			}

			else if (gamestate == GameState_Options || GameState_SelectWorld)
			{
				gamestate = GameState_Title;
			}
			Save__ = false;
		}

		if (forcequit) break;

		circlePosition circlePos;
		hidCircleRead(&circlePos);

		circlePosition cstickPos;
		hidCstickRead(&cstickPos);

		touchPosition touchPos;
		hidTouchRead(&touchPos);

		InputData inputData = (InputData){keysheld,    keysdown,    hidKeysUp(),  circlePos.dx, circlePos.dy,
						  touchPos.px, touchPos.py, cstickPos.dx, cstickPos.dy};

		if (gamestate == GameState_Playing) {
			while (timeAccum >= 1.f / 20.f) {
				World_Tick(world);

				timeAccum -= 1.f / 20.f;
			}

			PlayerController_Update(&playerCtrl, inputData, dt);

			World_UpdateChunkCache(world, WorldToChunkCoord(FastFloor(player.position.x)),
					       WorldToChunkCoord(FastFloor(player.position.z)));
		} else if (gamestate == GameState_SelectWorld) {
			char path[256];
			char name[WORLD_NAME_SIZE] = {'\0'};
			WorldGenType worldType;
			bool newWorld = false;
			if (WorldSelect_Update(path, name, &worldType, &newWorld, player)) {
				strcpy(world->name, name);
				world->genSettings.type = worldType;

				SaveManager_Load(&savemgr, path);

				ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, &flatGen,
							     world->genSettings.type == WorldGen_SuperFlat);
				ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, &smeaGen,
							     world->genSettings.type == WorldGen_Smea);
				ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, &bdgen,
							     world->genSettings.type == WorldGen_FlatBedrock);
				ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, &dgen,
							     world->genSettings.type == WorldGen_Default);

				world->cacheTranslationX = WorldToChunkCoord(FastFloor(player.position.x));
				world->cacheTranslationZ = WorldToChunkCoord(FastFloor(player.position.z));
				for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
					for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
						world->chunkCache[i][j] =
						    World_LoadChunk(world, i - CHUNKCACHE_SIZE / 2 + world->cacheTranslationX,
								    j - CHUNKCACHE_SIZE / 2 + world->cacheTranslationZ);
					}
				}

				for (int i = 0; i < 3; i++) {
					while (chunkWorker.working || chunkWorker.queue.queue.length > 0) {
						svcSleepThread(50000000);  // 1 Tick
					}
					World_Tick(world);
				}

				if (newWorld) {
					int highestblock = 0;
					for (int x = -1; x < 1; x++) {
						for (int z = -1; z < 1; z++) {
							int height = World_GetHeight(world, x, z);
							if (height > highestblock) highestblock = height;
						}
					}
					player.hunger=20;
					player.hp=20;
					player.position.y = (float)highestblock + 0.2f;
				}
				gamestate = GameState_Playing;
				lastTime = svcGetSystemTick();  // fix timing
			}
		}
		else if (gamestate == GameState_Options)
		{
			/////////////////////////////////////////////////////////////////
			if (Options_Update(player))
			{
				//Renderer_Update(&player, &world);
				//gamestate = GameState_Title;
			}
			/////////////////////////////////////////////////////////////////
		}
		else if (gamestate == GameState_Crash)
		{
			if (Crash_Update(player))
			{
				break;
			}
		}
		else if (gamestate == GameState_Title)
		{
			if (Title_Update(player))
			{
				
			}
		}
		else if (gamestate == GameState_Pause)
		{
			if (Pause_Update(player))
			{
				
			}
		}
		else if (gamestate == GameState_Death)
		{
			if (Death_Update(player))
			{
				
			}
		}
		Gui_InputData(inputData);
	}
	
	
	if (gamestate == GameState_Playing)
	{
		releaseWorld(&chunkWorker, &savemgr, world);
	}
	
	SaveManager_Deinit(&savemgr);

	SuperChunk_DeinitPools();

	free(world);

	/*if (BackgroundSound.threaid != NULL)
	{
		DoQuit(0);
		threadJoin(BackgroundSound.threaid, 50000);
		threadFree(BackgroundSound.threaid);
		if (BackgroundSound.opusFile)
		{
			op_free(BackgroundSound.opusFile);
		}
		audioExit(0);
		
	}
	if (PlayerSound.threaid != NULL)
	{
		DoQuit(1);
		threadJoin(PlayerSound.threaid, 50000);
		threadFree(PlayerSound.threaid);
		if (PlayerSound.opusFile)
		{
			op_free(PlayerSound.opusFile);
		}
		audioExit(1);
	}*/

	ndspExit();
	sino_exit();

	WorldSelect_Deinit();

	DebugUI_Deinit();

	ChunkWorker_Deinit(&chunkWorker);

	Renderer_Deinit();

	romfsExit();

	gfxExit();
	return 0;
}
