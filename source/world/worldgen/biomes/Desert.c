#include "world/worldgen/biomes/Desert.h"

void Desert_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos)
{
    srand(time(NULL));
	float px = (float)(xpos + item.chunk->x * CHUNK_SIZE);
	float pz = (float)(zpos + item.chunk->z * CHUNK_SIZE);

	const int smeasClusterSize = 8;
	const int smeasChunkHeight = 16;
	int height = (int)(sino_2d((px) / (smeasClusterSize * 4), (pz) / (smeasClusterSize * 4)) * smeasClusterSize) +
		     (smeasChunkHeight * smeasClusterSize / 2);
    for (int y = 0; y < height - 40; y++) {
		Chunk_SetBlock(item.chunk, xpos, y, zpos, Block_Stone);
	}
	for (int y = height - 40; y < height - 20; y++) {
		Chunk_SetBlock(item.chunk, xpos, y, zpos, Block_Sandstone);
	}
	for (int y = height - 20; y < height; y++) {
		Chunk_SetBlock(item.chunk, xpos, y, zpos, Block_Sand);
	}
	for (int bd = 0; bd < 1 + rand() % 3; bd++)
    	{Chunk_SetBlock(item.chunk, xpos, bd, zpos, Block_Bedrock);}
}