#include <world/worldgen/SuperFlatGen.h>
#include "world/worldgen/structures/TreeGen.h"

#include <misc/NumberUtils.h>

void SuperFlatGen_Init(SuperFlatGen* gen, World* world) {}

void SuperFlatGen_Generate(WorkQueue* queue, WorkerItem item, void* this) {
	for (int y = 0; y < 20; y++) {
		Block block = Block_Air;
		switch (y) {  // TODO: Mit einem Lookup Table ersetzen, Superflach Gen konfigurierbar machen
			case 0:
				block = Block_Bedrock;
				break;
			case 1 ... 10:
				block = Block_Stone;
				break;
			case 11 ... 15:
				block = Block_Dirt;
				break;
			case 16:
				block = Block_Grass;
				break;
			default:
				block = Block_Air;
				break;
		}
                for (int i = 2; i < 3; i++)
			{
				int treex = 5;
				int treez = 10;
				TreeGen_GenTree(queue, item, treex, 17, treez, 3);
			}
		for (int x = 0; x < CHUNK_SIZE; x++)
			for (int z = 0; z < CHUNK_SIZE; z++) Chunk_SetBlock(item.chunk, x, y, z, block);
	}
}
