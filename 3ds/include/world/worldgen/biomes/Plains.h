#pragma once

#include <world/World.h>

void Plains_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos);
Block Plains_GetBlockA();
Block Plains_GetBlockB();
Block Plains_GetBlockC();
Block Plains_GetBlockD();
Block Plains_GetBlockE();
int Plains_GetLevelA(int height);
int Plains_GetLevelB(int height);
int Plains_GetLevelC(int height);
int Plains_GetLevelD(int height);
int Plains_GetLevelE(int height);