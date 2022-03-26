#pragma once
#include "stdio.h"
#include "stdint.h"
#include "Cluster.hpp"
#define CHUNK_SIZE (16)
#define CHUNK_HEIGHT (256)
#define CLUSTER_PER_CHUNK (CHUNK_HEIGHT / CHUNK_SIZE)

typedef enum {
	ChunkGen_Empty,  //
	ChunkGen_Terrain,
	ChunkGen_Finished  // Terrain | Decoration
} ChunkGenProgress;

class Chunk
{
    public:


    uint32_t tasksRunning;
	uint32_t graphicalTasksRunning;

	uint32_t uuid;

	ChunkGenProgress genProgress;

	int x, z;
	Cluster clusters[CLUSTER_PER_CHUNK];

	uint8_t heightmap[CHUNK_SIZE][CHUNK_SIZE];
	uint32_t heightmapRevision;

	size_t revision;

	uint32_t displayRevision;
	bool forceVBOUpdate;

	int references;
    private:
  
};