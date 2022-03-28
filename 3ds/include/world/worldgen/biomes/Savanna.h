#pragma once

#include <world/World.h>

void Savanna_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos);
Block Savanna_GetBlockA();
Block Savanna_GetBlockB();
Block Savanna_GetBlockC();
Block Savanna_GetBlockD();
Block Savanna_GetBlockE();
int Savanna_GetLevelA(int height);
int Savanna_GetLevelB(int height);
int Savanna_GetLevelC(int height);
int Savanna_GetLevelD(int height);
int Savanna_GetLevelE(int height);