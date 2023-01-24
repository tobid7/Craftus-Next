#pragma once
#include <cstddef>
/*
A Registry of Base-Engine Rendering Functions that are Required to Render
objects!
*/

extern void (*Base_drawArrays)(size_t, size_t);
extern void (*Base_drawElements)(size_t, size_t, const void *);