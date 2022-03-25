#include "world/worldgen/biomes/Plains.h"

void Plains_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos)
{
   	srand(time(NULL));
	
	float px = (float)(xpos2 + item.chunk->x * CHUNK_SIZE);
	float pz = (float)(zpos2 + item.chunk->z * CHUNK_SIZE);
	///
	const int smeasClusterSize = 8;
	const int smeasChunkHeight = 16;
	int height = (int)(sino_2d((px) / (smeasClusterSize * 4), (pz) / (smeasClusterSize * 4)) * smeasClusterSize) +
		     (smeasChunkHeight * smeasClusterSize / 2);
	///
	for (int y = 0; y < height - 3; y++) {
		Chunk_SetBlock(item.chunk, xpos2, y, zpos2, Block_Stone);
	}
	for (int y = height - 3; y < height; y++) {
		Chunk_SetBlock(item.chunk, xpos2, y, zpos2, Block_Dirt);
	}
	Chunk_SetBlock(item.chunk, xpos2, height, zpos2, Block_Grass);
	//
	//
	//	
	//
                for (int bd = 0; bd < 1 + rand() % 3; bd++)
                {Chunk_SetBlock(item.chunk, xpos2, bd, zpos2, Block_Bedrock);}
	int l = rand() % 800;
                if (l == 1){
	    	Chunk_SetBlock(item.chunk, xpos2, height + 1, zpos2, Block_Pumpkin);
		}
	//
	if (xpos2 == rand() % 20 && zpos2 == rand() % 25)
	{	
		int hxx = 0;
		hxx = 6 + rand() % 2;
                        if (xpos2 >= 4 && xpos2 <= 12){
                        if (zpos2 >= 4 && zpos2 <= 12){
		
		      TreeGen_GenTree(queue, item, xpos2, height + 1, zpos2, hxx);
	//
	}}}
}
