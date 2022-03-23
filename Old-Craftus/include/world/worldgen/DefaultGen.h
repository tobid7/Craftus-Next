#pragma once

#include <world/World.h>

typedef struct { World* world; } DefaultGen;

void DefaultGen_Init(DefaultGen* gen, World* world);
void DefaultGen_Generate(WorkQueue* queue, WorkerItem item, void* this);