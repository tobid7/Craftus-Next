#pragma once

#include <entity/Player.h>
#include <world/WorkQueue.h>
#include <world/World.h>
#include <GameStates.h>

void Renderer_Init(World* world_, Player* player_, WorkQueue* queue, GameState* gamestate_);
void Renderer_Deinit();

void Renderer_Update(Player* player_, World* world_);
void Renderer_Render();