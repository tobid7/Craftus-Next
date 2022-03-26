#pragma once

#include <world/World.h>

void Forest_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos);
Block Forest_GetBlockA();
Block Forest_GetBlockB();
Block Forest_GetBlockC();
Block Forest_GetBlockD();
Block Forest_GetBlockE();
int Forest_GetLevelA(int height);
int Forest_GetLevelB(int height);
int Forest_GetLevelC(int height);
int Forest_GetLevelD(int height);
int Forest_GetLevelE(int height);