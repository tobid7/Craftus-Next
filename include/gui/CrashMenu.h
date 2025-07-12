#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <entity/Player.h>

#include <world/World.h>

void Crash_Init(const char* crash, ...);
void Crash_Deinit();

void Crash_Render();
bool Crash_Update(Player player);
