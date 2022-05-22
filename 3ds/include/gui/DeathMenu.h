#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <entity/Player.h>

#include <world/World.h>

void Death_Init();
void Death_Deinit();

void Death_Render();
bool Death_Update(Player player);