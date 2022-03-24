#include "world/worldgen/biomes/Plains.h"

void Plains_Gen(WorkQueue* queue, WorkerItem item, void* this)
{
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
			
			
				
			
                        for (int bd = 0; bd < 1 + rand() % 3; bd++)
                        {Chunk_SetBlock(item.chunk, x, bd, z, Block_Bedrock);}
			int l = rand() % 800;
                        if (l == 1){
			    	Chunk_SetBlock(item.chunk, x, height + 1, z, Block_Pumpkin);
				}
			
			if (x == rand() % 30 && z == rand() % 35)
			{	
				int hxx = 0;
				hxx = 6 + rand() % 2;
				
				TreeGen_GenTree(queue, item, x, height + 1, z, hxx);
				
			}
		}
	}
}
