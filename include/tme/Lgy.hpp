#pragma once

/**
 * Legacy Access exposed functions
 */

#include <3ds.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Damage_ {
  const char* cause;  // string literal or C string
  int time;           // duration
} Damage;

void Lgy_OvertimeDamage(const char* cause, int time, void* plr);
u32 Lgy_FastHash(const char* str);
#ifdef __cplusplus
}
#endif