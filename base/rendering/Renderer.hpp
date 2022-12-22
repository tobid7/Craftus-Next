#pragma once
#include <Error.hpp>
#include <misc/color_t.h>

namespace Base {
class Renderer {
public:
  virtual ErrorCode Init(int screenw, int screenh) = 0;
  virtual ErrorCode Exit() = 0;
  virtual ErrorCode Update() = 0;
  virtual ErrorCode DrawArrays(int count) = 0;
  virtual ErrorCode BeginDraw() = 0;
  virtual ErrorCode SetClearColor(color_t color) = 0;
  virtual color_t GetClearColor() = 0;
};
} // namespace Base