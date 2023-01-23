#include <rendering/Base_Ren_Reg.hpp>

void (*Base_drawArrays)(size_t, size_t);
void (*Base_drawElements)(size_t, size_t, const void *);