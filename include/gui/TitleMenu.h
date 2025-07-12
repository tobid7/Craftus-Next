#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <entity/Player.h>

#include <world/World.h>

void Title_Init();
void Title_Deinit();

void Title_Render();
bool Title_Update(Player player);
