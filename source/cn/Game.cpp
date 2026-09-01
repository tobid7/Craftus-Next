extern "C" {
#include <rendering/WorldRenderer.h>
}

#include <cn/Game.hpp>
#include <cn/gfx/Renderer.hpp>
#include <cn/misc/Crash.hpp>
#include <cn/misc/Fs.hpp>
#include <iostream>
#include <palladium>
#include <pdsystem>

namespace CN {
void catch_the_stuff() {
  gfxInitDefault();
  consoleInit(GFX_TOP, nullptr);
  std::cout << "Craftus Next [C++ Engine] Error Handler" << std::endl;
  try {
    std::rethrow_exception(std::current_exception());
  } catch (const std::exception& e) {
    std::cout << "\n\n" << e.what() << std::endl;
  }
  aptSetHomeAllowed(false);
  aptSetSleepAllowed(false);
  while (aptMainLoop()) {
    hidScanInput();
    if (hidKeysDown() & KEY_START) {
      break;
    }
  }
  std::abort();
}

void InitExceptionCallback() { std::set_terminate(catch_the_stuff); }

CoreEngine::CoreEngine() {
  InitExceptionCallback();
  InitFS();
  LOG("CoreEngine::CoreEngine");
  // Init 3ds base
  gfxInitDefault();
  osSetSpeedupEnable(true);
  gfxSet3D(true);
  romfsInit();
  // Init Legacy Craftus Engine
  pWorld = new World;
  ChunkWorker_Init(&pChunkWorker);
  World_Init(pWorld, &pChunkWorker.queue);
  Player_Init(&pPlayer, pWorld);
  PlayerController_Init(&pPlayerCtrl, &pPlayer);
  SuperFlatGen_Init(&pSuperFlat, pWorld);
  FlatBedrockGen_Init(&pBedrockFlat, pWorld);
  DefaultGen_Init(&pDefault, pWorld);
  SmeaGen_Init(&pSmea, pWorld);

  WorldSelect_Init();
  Options_Init(GameState_Title);
  SuperChunk_InitPools();
  // SaveManager_InitFileSystem();
  SaveManager_Init(&pSaveMgr, &pPlayer);
  pInitChunkWorker();
  sino_init();
  pGamestate = GameState_Playing;
  CN::Renderer::Init();
  CN::Renderer::pDebug = new DebugUI();
  PolyGen_Init(pWorld, &pPlayer);
  WorldRenderer_Init(&pPlayer, pWorld, &pChunkWorker.queue,
                     CN::Renderer::uLocProj);
  Block_Init();
  C3D_CullFace(GPU_CULL_BACK_CCW);
  PD::Gfx::UseDriver<PD::GfxCitro3D>();
  PD::Hid::UseDriver<PD::HidDriver>();
  PD::Os::UseDriver<PD::OsDriver>();
  PD::Gfx::Init();
}

CoreEngine::~CoreEngine() {
  LOG("CoreEngine::~CoreEngine");
  if (pGamestate == GameState_Playing) {
    pUnloadWorld();
  }
  SaveManager_Deinit(&pSaveMgr);
  SuperChunk_DeinitPools();

  ndspExit();
  sino_exit();
  WorldSelect_Deinit();
  ChunkWorker_Deinit(&pChunkWorker);

  delete pWorld;
  romfsExit();
  gfxExit();
}

void CoreEngine::Run() {
  LOG("CoreEngine::Run");
  pDeltaClock.Reset();
  while (aptMainLoop()) {
    if (pKill) {
      break;
    }
    pUpdateGfx();
    pUpdateInput();
  }
}

void CoreEngine::pUpdateInput() {
  LOG("Updating Input");
  hidScanInput();
  circlePosition circlePos;
  hidCircleRead(&circlePos);
  circlePosition cstickPos;
  hidCstickRead(&cstickPos);
  touchPosition touchPos;
  hidTouchRead(&touchPos);
  InputData inp = (InputData){
      hidKeysHeld(), hidKeysDown(), hidKeysUp(),  circlePos.dx, circlePos.dy,
      touchPos.px,   touchPos.py,   cstickPos.dx, cstickPos.dy,
  };
  if (pGamestate == GameState_Playing) {
    PlayerController_Update(&pPlayerCtrl, inp, pDelta);
    World_UpdateChunkCache(pWorld,
                           WorldToChunkCoord(FastFloor(pPlayer.position.x)),
                           WorldToChunkCoord(FastFloor(pPlayer.position.z)));
  }
  Gui_InputData(inp);
}

void CoreEngine::pUpdateGfx() { LOG("Updating Gfx"); }

void CoreEngine::pUpdateTimings() {
  pDelta = pDeltaClock.GetSeconds() * 1000.f;
  pDeltaClock.Reset();
  if (pGamestate == GameState_Playing) {
    pAccum += pDelta;
    if (pAccum > 0.05) {  // 1 / 20 -> 20 tiks
      World_Tick(pWorld);
      pAccum -= 0.05;
    }
  }
}

void CoreEngine::pInitChunkWorker() {
  LgyLog("CoreEngine::pInitChunkWorker");
  // PolyGen
  ChunkWorker_AddHandler(
      &pChunkWorker, WorkerItemType_PolyGen,
      (WorkerFuncObj){&PolyGen_GeneratePolygons, nullptr, true});
  // World Generators
  ChunkWorker_AddHandler(
      &pChunkWorker, WorkerItemType_BaseGen,
      (WorkerFuncObj){&SuperFlatGen_Generate, &pSuperFlat, true});
  ChunkWorker_AddHandler(
      &pChunkWorker, WorkerItemType_BaseGen,
      (WorkerFuncObj){&FlatBedrockGen_Generate, &pBedrockFlat, true});
  ChunkWorker_AddHandler(&pChunkWorker, WorkerItemType_BaseGen,
                         (WorkerFuncObj){&SmeaGen_Generate, &pSmea, true});
  ChunkWorker_AddHandler(
      &pChunkWorker, WorkerItemType_BaseGen,
      (WorkerFuncObj){&DefaultGen_Generate, &pDefault, true});
  // Savemanager
  ChunkWorker_AddHandler(
      &pChunkWorker, WorkerItemType_Load,
      (WorkerFuncObj){&SaveManager_LoadChunk, &pSaveMgr, true});
  ChunkWorker_AddHandler(
      &pChunkWorker, WorkerItemType_Save,
      (WorkerFuncObj){&SaveManager_SaveChunk, &pSaveMgr, true});
}

void CoreEngine::pUnloadWorld() {
  for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
    for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
      World_UnloadChunk(pWorld, pWorld->chunkCache[i][j]);
    }
  }
  ChunkWorker_Finish(&pChunkWorker);
  World_Reset(pWorld);
  SaveManager_Unload(&pSaveMgr);
}
}  // namespace CN