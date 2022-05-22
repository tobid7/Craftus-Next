#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <entity/Player.h>

#include <world/World.h>

void Pause_Init();
void Pause_Deinit();

void Pause_Render();
bool Pause_Update(Player player);