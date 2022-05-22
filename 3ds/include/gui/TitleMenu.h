#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <entity/Player.h>

#include <world/World.h>

typedef struct {
    bool settings = false;
    bool worlds = false;
    bool exit = false;
} TitleResult;

void Title_Init();
void Title_Deinit();

void Title_Render();
bool Title_Update(Player player, TitleResult res);