#pragma once

#include <entity/Player.h>
#include <rendering/VertexFmt.h>
#include <world/WorkQueue.h>
#include <world/World.h>

void PolyGen_Init(World* world_, Player* player_);
void PolyGen_Deinit();

void PolyGen_Harvest();
void PolyGen_GeneratePolygons(WorkQueue* queue, WorkerItem item, void* data);
