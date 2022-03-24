#include <world/worldgen/DefaultGen.h>
#include "world/worldgen/structures/TreeGen.h"
#include <sino/sino.h>
#include <stdio.h>
#include <time.h>
void DefaultGen_Init(DefaultGen* gen, World* world) { gen->world = world; }

// based off https://github.com/smealum/3dscraft/blob/master/source/generation.c
void DefaultGen_Generate(WorkQueue* queue, WorkerItem item, void* this) {
	srand(time(NULL));
	for (int x = 0; x < CHUNK_SIZE; x++) {
		for (int z = 0; z < CHUNK_SIZE; z++) {
			float px = (float)(x + item.chunk->x * CHUNK_SIZE);
			float pz = (float)(z + item.chunk->z * CHUNK_SIZE);

			const int smeasClusterSize = 8;
			const int smeasChunkHeight = 16;
			int height = (int)(sino_2d((px) / (smeasClusterSize * 4), (pz) / (smeasClusterSize * 4)) * smeasClusterSize) +
				     (smeasChunkHeight * smeasClusterSize / 2);

			for (int y = 0; y < height - 3; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Stone);
			}
			for (int y = height - 3; y < height; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Dirt);
			}
			Chunk_SetBlock(item.chunk, x, height, z, Block_Grass);
			/*for (int i = rand() % 10; i < 3; i++)
			{
				int treex = 2*i;
				int treez = 3*i;
				TreeGen_GenTree(queue, item, treex, height + 1, treez, 3);
				
			}*/
			int l = rand() % 800;
            if (l == 1){
                for (int kk = 0; kk < 16; kk++)
                {
			    	Chunk_SetBlock(item.chunk, rand() % 17, height + 1, rand() % 17, Block_Pumpkin);
				}
			}
			
			
		}
	}
}
