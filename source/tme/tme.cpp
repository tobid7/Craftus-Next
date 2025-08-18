#include <tme/tme.hpp>

namespace TME {
CoreEngine::CoreEngine() {
  // Init 3ds base
  gfxInitDefault();
  osSetSpeedupEnable(true);
  gfxSet3D(true);
  romfsInit();
  // Init Legacy Craftus Engine
  ChunkWorker_Init(&pChunkWorker);
  World_Init(&pWorld, &pChunkWorker.queue);
  Player_Init(&pPlayer, &pWorld);
  PlayerController_Init(&pPlayerCtrl, &pPlayer);
  SuperFlatGen_Init(&pSuperFlat, &pWorld);
  FlatBedrockGen_Init(&pBedrockFlat, &pWorld);
  DefaultGen_Init(&pDefault, &pWorld);
  SmeaGen_Init(&pSmea, &pWorld);
  Renderer_Init(&pWorld, &pPlayer, &pChunkWorker.queue, &pGamestate);
  DebugUI_Init();
  WorldSelect_Init();
  Options_Init(GameState_Title);
  SuperChunk_InitPools();
  SaveManager_InitFileSystem();
  SaveManager_Init(&pSaveMgr, &pPlayer);
  pInitChunkWorker();
  sino_init();
}
CoreEngine::~CoreEngine() {}

void CoreEngine::Run() {
  while (aptMainLoop()) {
  }
}

void CoreEngine::pInitChunkWorker() {
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
}  // namespace TME