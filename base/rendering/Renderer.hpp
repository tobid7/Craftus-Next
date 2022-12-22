#pragma once
#include <Error.hpp>

namespace Base {
class Renderer {
public:
  virtual ErrorCode Init() = 0;
  virtual ErrorCode Exit() = 0;
  virtual ErrorCode Update() = 0;
  virtual ErrorCode DrawArrays(int count) = 0;
};
} // namespace Base