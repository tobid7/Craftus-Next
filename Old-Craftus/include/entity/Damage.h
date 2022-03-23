#pragma once

#include <entity/Player.h>

typedef struct {
    char cause;
    int time;
}Damage;

void OvertimeDamage(cause, time);