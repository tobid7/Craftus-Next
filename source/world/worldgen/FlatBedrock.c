#include <misc/NumberUtils.h>
#include <world/worldgen/FlatBedrockGen.h>

void FlatBedrockGen_Init(FlatBedrockGen* gen, World* world) {}

void FlatBedrockGen_Generate(WorkQueue* queue, WorkerItem item, void* this) {
  for (int y = 0; y < 5; y++) {
    Block block = Block_Air;
    switch (y) {
      case 0:
        block = Block_Bedrock;
        break;
      case 1 ... 2:
        block = Block_Dirt;
        break;
      case 3:
        block = Block_Grass;
        break;
      default:
        block = Block_Air;
        break;
    }
    for (int x = 0; x < CHUNK_SIZE; x++)
      for (int z = 0; z < CHUNK_SIZE; z++)
        Chunk_SetBlock(item.chunk, x, y, z, block);
  }
}
