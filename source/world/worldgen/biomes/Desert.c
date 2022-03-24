#include "world/worldgen/biomes/Desert.h"

void Desert_Gen(WorkQueue* queue, WorkerItem item, void* this)
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
            for (int y = 0; y < height - 40; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Stone);
			for (int y = height - 40; y < height - 20; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Sandstone);
			}
			for (int y = height - 20; y < height; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Sand);
			}
}