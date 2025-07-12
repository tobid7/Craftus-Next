#pragma once

#include <world/World.h>

void Desert_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos);
Block Desert_GetBlockA();
Block Desert_GetBlockB();
Block Desert_GetBlockC();
Block Desert_GetBlockD();
Block Desert_GetBlockE();
int Desert_GetLevelA(int height);
int Desert_GetLevelB(int height);
int Desert_GetLevelC(int height);
int Desert_GetLevelD(int height);
int Desert_GetLevelE(int height);