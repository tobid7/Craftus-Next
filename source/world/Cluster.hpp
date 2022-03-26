#pragma once
#include "stdio.h"
#include "stdint.h"
#include "Block.hpp"
#include "Chunk.hpp"
#include "VBOCache.hpp"

class Cluster
{
    public:

    
    int y;
	Block blocks[CHUNK_SIZE][CHUNK_SIZE][CHUNK_SIZE];
	uint8_t metadataLight[CHUNK_SIZE][CHUNK_SIZE][CHUNK_SIZE];  // first half metadata, second half light

	uint32_t revision;

	uint16_t seeThrough;

	bool empty;
	uint32_t emptyRevision;

	VBO_Block vbo, transparentVBO;
	size_t vertices, transparentVertices;
	uint32_t vboRevision;
	bool forceVBOUpdate;
    private:
    
};