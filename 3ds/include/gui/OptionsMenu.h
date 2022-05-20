#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <entity/Player.h>

#include <world/World.h>

typedef struct {
    float fovscale;    
} Options_Result;

void Options_Init();
void Options_Deinit();

void Options_Render();
bool Options_Update(Player player);