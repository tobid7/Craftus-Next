#pragma once

/** Legacy Craftus Engine */
extern "C" {
#include <GameStates.h>
#include <entity/Player.h>
#include <entity/PlayerController.h>
#include <gui/CrashMenu.h>
#include <gui/DeathMenu.h>
#include <gui/DebugUI.h>
#include <gui/Gui.h>
#include <gui/Inventory.h>
#include <gui/OptionsMenu.h>
#include <gui/PauseMenu.h>
#include <gui/SpriteBatch.h>
#include <gui/TitleMenu.h>
#include <gui/WorldSelect.h>
#include <rendering/PolyGen.h>
#include <rendering/Renderer.h>
#include <sino/sino.h>
#include <world/ChunkWorker.h>
#include <world/World.h>
#include <world/savegame/SaveManager.h>
#include <world/savegame/SuperChunk.h>
#include <world/worldgen/DefaultGen.h>
#include <world/worldgen/FlatBedrockGen.h>
#include <world/worldgen/SmeaGen.h>
#include <world/worldgen/SuperFlatGen.h>
}

#include <tme/gfx/vbocache.hpp>
#include <tme/gfx/vertex.hpp>

/**
 * The
 * Minecraft
 * Engine
 */

namespace TME {
class CoreEngine {
 public:
  CoreEngine();
  ~CoreEngine();

  void Run();

  void pInitChunkWorker();

  /** Core Components */
  GameState pGamestate = GameState_Title;
  World pWorld;
  ChunkWorker pChunkWorker;
  SaveManager pSaveMgr;
  Player pPlayer;
  PlayerController pPlayerCtrl;
  /** Generators */
  SuperFlatGen pSuperFlat;
  SmeaGen pSmea;
  FlatBedrockGen pBedrockFlat;
  DefaultGen pDefault;
};
}  // namespace TME