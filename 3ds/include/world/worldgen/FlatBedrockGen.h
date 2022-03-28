#pragma once

#include <world/WorkQueue.h>
#include <world/World.h>

typedef struct { World* world; } FlatBedrockGen;

void FlatBedrockGen_Init(FlatBedrockGen* gen, World* world);

void FlatBedrockGen_Generate(WorkQueue* queue, WorkerItem item, void* this);
