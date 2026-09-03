#include <3ds.h>
#include <GameStates.h>
#include <citro3d.h>
#include <entity/Player.h>
#include <entity/PlayerController.h>
#include <gui/CrashMenu.h>
#include <gui/DeathMenu.h>
#include <gui/Gui.h>
#include <gui/OptionsMenu.h>
#include <gui/PauseMenu.h>
#include <gui/TitleMenu.h>
#include <gui/WorldSelect.h>
#include <misc/mem.h>
#include <rendering/PolyGen.h>
#include <sino/sino.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <world/ChunkWorker.h>
#include <world/World.h>
#include <world/savegame/SaveManager.h>
#include <world/savegame/SuperChunk.h>
#include <world/worldgen/DefaultGen.h>
#include <world/worldgen/FlatBedrockGen.h>
#include <world/worldgen/SmeaGen.h>
#include <world/worldgen/SuperFlatGen.h>

bool showDebugInfo = true;
bool savedcrash = false;
bool forcequit;
float dt = 0.f;
float dt__ = 0.f;
bool Save__ = false;
extern int clusters_drawn;

void releaseWorld(ChunkWorker *chunkWorker, SaveManager *savemgr,
                  World *world) {
  for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
    for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
      World_UnloadChunk(world, world->chunkCache[i][j]);
    }
  }
  ChunkWorker_Finish(chunkWorker);
  World_Reset(world);

  SaveManager_Unload(savemgr);
}
GameState gamestate = GameState_Playing;

void LoadWorld(World *world, Player *player, ChunkWorker *chunkWorker,
               u64 *lastTime, FlatBedrockGen *bdgen, SmeaGen *smeaGen,
               SuperFlatGen *flatGen, DefaultGen *dgen, SaveManager *savemgr) {
  strcpy(world->name, "TestWelt4");
  world->genSettings.type = WorldGen_Default;
  // SaveManager_Load(savemgr, "sdmc:/3ds/CraftusNext/saves/TestWelt4");
  ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, flatGen,
                               world->genSettings.type == WorldGen_SuperFlat);
  ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, smeaGen,
                               world->genSettings.type == WorldGen_Smea);
  ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, bdgen,
                               world->genSettings.type == WorldGen_FlatBedrock);
  ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, dgen,
                               world->genSettings.type == WorldGen_Default);

  world->cacheTranslationX = WorldToChunkCoord(FastFloor(player->position.x));
  world->cacheTranslationZ = WorldToChunkCoord(FastFloor(player->position.z));
  for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
    for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
      world->chunkCache[i][j] = World_LoadChunk(
          world, i - CHUNKCACHE_SIZE / 2 + world->cacheTranslationX,
          j - CHUNKCACHE_SIZE / 2 + world->cacheTranslationZ);
    }
  }

  for (int i = 0; i < 3; i++) {
    while (chunkWorker->working || chunkWorker->queue.queue.length > 0) {
      svcSleepThread(50000000); // 1 Tick
    }
    World_Tick(world);
  }

  if (true) {
    int highestblock = 0;
    for (int x = -1; x < 1; x++) {
      for (int z = -1; z < 1; z++) {
        int height = World_GetHeight(world, x, z);
        if (height > highestblock)
          highestblock = height;
      }
    }
    player->hunger = 20;
    player->hp = 20;
    player->position.y = (float)highestblock + 0.2f;
    player->flying = true;
  }
  gamestate = GameState_Playing;
  *lastTime = svcGetSystemTick(); // fix timing
}

int main() {
  Lgy_InitCxxExceptionScreen();
  gfxInitDefault();
  osSetSpeedupEnable(true);
  gfxSet3D(true);
  romfsInit();
  Lgy_Splash();
  Lgy_InitFS();
  Lgy_GameOptionsInit();
  SuperFlatGen flatGen;
  SmeaGen smeaGen;
  FlatBedrockGen bdgen;
  DefaultGen dgen;
  SuperChunk_InitPools();
  SaveManager_InitFileSystem();
  ChunkWorker chunkWorker;
  ChunkWorker_Init(&chunkWorker);
  ChunkWorker_AddHandler(
      &chunkWorker, WorkerItemType_PolyGen,
      (WorkerFuncObj){&PolyGen_GeneratePolygons, NULL, true});
  ChunkWorker_AddHandler(
      &chunkWorker, WorkerItemType_BaseGen,
      (WorkerFuncObj){&SuperFlatGen_Generate, &flatGen, true});
  ChunkWorker_AddHandler(
      &chunkWorker, WorkerItemType_BaseGen,
      (WorkerFuncObj){&FlatBedrockGen_Generate, &bdgen, true});
  ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_BaseGen,
                         (WorkerFuncObj){&SmeaGen_Generate, &smeaGen, true});
  ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_BaseGen,
                         (WorkerFuncObj){&DefaultGen_Generate, &dgen, true});
  sino_init();
  World *world = (World *)lgy_malloc(sizeof(World));
  Player player;
  PlayerController playerCtrl;
  Player_Init(&player, world);
  PlayerController_Init(&playerCtrl, &player);
  SuperFlatGen_Init(&flatGen, world);
  FlatBedrockGen_Init(&bdgen, world);
  DefaultGen_Init(&dgen, world);
  SmeaGen_Init(&smeaGen, world);
  Lgy_InitRenderStage(world, &gamestate, &player, &chunkWorker);
  WorldSelect_Init();
  Options_Init(GameState_Title);
  World_Init(world, &chunkWorker.queue);
  SaveManager savemgr;
  SaveManager_Init(&savemgr, &player);
  ChunkWorker_AddHandler(
      &chunkWorker, WorkerItemType_Load,
      (WorkerFuncObj){&SaveManager_LoadChunk, &savemgr, true});
  ChunkWorker_AddHandler(
      &chunkWorker, WorkerItemType_Save,
      (WorkerFuncObj){&SaveManager_SaveChunk, &savemgr, true});
  uint64_t lastTime = svcGetSystemTick();
  float timeAccum = 0.f, fpsClock = 0.f;
  int frameCounter = 0, fps = 0;
  int cxxcnt = 0;
  if (gamestate == GameState_Playing) {
    LoadWorld(world, &player, &chunkWorker, &lastTime, &bdgen, &smeaGen,
              &flatGen, &dgen, &savemgr);
  }
  while (aptMainLoop()) {
    Lgy_UpdateInput();
    hidScanInput();
    if (hidKeysDown() & KEY_START)
      break;
    Lgy_DebugUI_Text("Craftus Next %s - %s", CRAFTUS_VERSION_STR, CN_COMMIT);
    // #ifdef CN_BRANCH
    //     Lgy_DebugUI_Text("Branch: %s", CN_BRANCH);
    // #endif
    Lgy_DebugUI_Text("%d FPS ", fps);
    Lgy_DebugUI_Text("CPU: %5.2f%% GPU: %5.2f%% Buf: %5.2f%%",
                     C3D_GetProcessingTime() * 6.f, C3D_GetDrawingTime() * 6.f,
                     C3D_GetCmdBufUsage() * 100.f,
                     C3D_GetCmdBufUsage() * 100.f);
    Lgy_DebugUI_Text("Lin: %.2fmb", (float)linearSpaceFree() / 1024.f / 1024.f);
    // Lgy_DebugRamLine();
    if (gamestate == GameState_Playing || gamestate == GameState_Pause) {
      // Cluster Info and View Distance
      Lgy_DebugUI_Text("C %d/%d D %d", clusters_drawn,
                       CHUNKCACHE_SIZE * CHUNKCACHE_SIZE * 16, VIEW_DISTANCE);
      // Lgy_DebugUI_Text("E %d/%d", 0, 0);  // Entitys
      // Player Position
      Lgy_DebugUI_Text("XYZ: %.3f / %.3f / %.3f", f3_unpack(player.position));
      Lgy_DebugUI_Text("Block: %d %d %d", (int)FastFloor(player.position.x),
                       (int)FastFloor(player.position.y),
                       (int)FastFloor(player.position.z));
      Lgy_DebugUI_Text("Chunk: %d %d %d in %d %d %d",
                       WorldToLocalCoord(player.position.x),
                       WorldToLocalCoord(player.position.y),
                       WorldToLocalCoord(player.position.z),
                       WorldToChunkCoord(player.position.x),
                       WorldToChunkCoord(player.position.y),
                       WorldToChunkCoord(player.position.z));
    }
    Lgy_Render_(world, &gamestate);

    uint64_t currentTime = svcGetSystemTick();
    dt = ((float)(currentTime / (float)TICKS_PER_MSEC) -
          (float)(lastTime / (float)TICKS_PER_MSEC)) /
         1000.f;
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

    u32 keysheld = hidKeysHeld(), keysdown = hidKeysDown();
    if (keysdown & KEY_START || Save__) {
      if (gamestate == GameState_SelectWorld) {
        gamestate = GameState_Title;
      } else if (gamestate == GameState_Playing ||
                 gamestate == GameState_Pause) {
        releaseWorld(&chunkWorker, &savemgr, world);
        gamestate = GameState_SelectWorld;
        WorldSelect_ScanWorlds();
        lastTime = svcGetSystemTick();
      }

      else if (gamestate == GameState_Options) {
        gamestate = GameState_Title;
      }
      Save__ = false;
    }

    if (forcequit)
      break;

    circlePosition circlePos;
    hidCircleRead(&circlePos);
    circlePosition cstickPos;
    hidCstickRead(&cstickPos);
    touchPosition touchPos;
    hidTouchRead(&touchPos);
    InputData inputData = (InputData){keysheld,     keysdown,     hidKeysUp(),
                                      circlePos.dx, circlePos.dy, touchPos.px,
                                      touchPos.py,  cstickPos.dx, cstickPos.dy};

    if (gamestate == GameState_Playing) {
      while (timeAccum >= 1.f / 20.f) {
        World_Tick(world);
        timeAccum -= 1.f / 20.f;
      }

      PlayerController_Update(&playerCtrl, inputData, dt);
      World_UpdateChunkCache(world,
                             WorldToChunkCoord(FastFloor(player.position.x)),
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
        ChunkWorker_SetHandlerActive(
            &chunkWorker, WorkerItemType_BaseGen, &flatGen,
            world->genSettings.type == WorldGen_SuperFlat);
        ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen,
                                     &smeaGen,
                                     world->genSettings.type == WorldGen_Smea);
        ChunkWorker_SetHandlerActive(
            &chunkWorker, WorkerItemType_BaseGen, &bdgen,
            world->genSettings.type == WorldGen_FlatBedrock);
        ChunkWorker_SetHandlerActive(
            &chunkWorker, WorkerItemType_BaseGen, &dgen,
            world->genSettings.type == WorldGen_Default);

        world->cacheTranslationX =
            WorldToChunkCoord(FastFloor(player.position.x));
        world->cacheTranslationZ =
            WorldToChunkCoord(FastFloor(player.position.z));
        for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
          for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
            world->chunkCache[i][j] = World_LoadChunk(
                world, i - CHUNKCACHE_SIZE / 2 + world->cacheTranslationX,
                j - CHUNKCACHE_SIZE / 2 + world->cacheTranslationZ);
          }
        }

        for (int i = 0; i < 3; i++) {
          while (chunkWorker.working || chunkWorker.queue.queue.length > 0) {
            svcSleepThread(50000000); // 1 Tick
          }
          World_Tick(world);
        }

        if (newWorld) {
          int highestblock = 0;
          for (int x = -1; x < 1; x++) {
            for (int z = -1; z < 1; z++) {
              int height = World_GetHeight(world, x, z);
              if (height > highestblock)
                highestblock = height;
            }
          }
          player.hunger = 20;
          player.hp = 20;
          player.position.y = (float)highestblock + 0.2f;
        }
        gamestate = GameState_Playing;
        lastTime = svcGetSystemTick(); // fix timing
      }
    } else if (gamestate == GameState_Options) {
      if (Options_Update(player)) {
      }
    } else if (gamestate == GameState_Crash) {
      if (Crash_Update(player)) {
        break;
      }
    } else if (gamestate == GameState_Title) {
      if (Title_Update(player)) {
      }
    } else if (gamestate == GameState_Pause) {
      if (Pause_Update(player)) {
      }
    } else if (gamestate == GameState_Death) {
      if (Death_Update(player)) {
      }
    }
    Gui_InputData(inputData);
  }

  Lgy_GameOptionsSave();

  if (gamestate == GameState_Playing) {
    releaseWorld(&chunkWorker, &savemgr, world);
  }

  SaveManager_Deinit(&savemgr);

  SuperChunk_DeinitPools();

  lgy_free(world);

  ndspExit();
  sino_exit();
  WorldSelect_Deinit();
  ChunkWorker_Deinit(&chunkWorker);
  Lgy_ExitRenderStage();
  romfsExit();
  gfxExit();
  return 0;
}
