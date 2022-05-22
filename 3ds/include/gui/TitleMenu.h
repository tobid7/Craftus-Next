#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <entity/Player.h>

#include <world/World.h>

typedef struct {
    bool settings;
    bool worlds;
    bool exit_;
} TitleResult;

void Title_Init();
void Title_Deinit();

void Title_Render();
bool Title_Update(Player player, TitleResult res);
