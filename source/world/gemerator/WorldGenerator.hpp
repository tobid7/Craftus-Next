#pragma once
#include "PerlinNoise.hpp"

class WorldGenerator
{
private:
    int m_seed;
public:
    WorldGenerator(int seed){m_seed = seed;}
    virtual ~WorldGenerator();
};

