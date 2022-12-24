#pragma once
#include <Error.hpp>
#include <misc/color_t.h>

namespace Base {
class Renderer {
public:
  void LD7();
  inline ErrorCode Init(int screenw, int screenh) {
    return s_instance->I_Init(screenw, screenh);
  };
  inline ErrorCode Exit() { return s_instance->I_Exit(); };
  inline ErrorCode Update() { return s_instance->I_Update(); };
  inline ErrorCode DrawArrays(int count) {
    return s_instance->I_DrawArrays(count);
  };
  inline ErrorCode BeginDraw() { return s_instance->I_BeginDraw(); };
  inline ErrorCode SetClearColor(color_t color) {
    return s_instance->I_SetClearColor(color);
  };
  inline color_t GetClearColor() { return s_instance->I_GetClearColor(); };

protected:
  virtual ErrorCode I_Init(int screenw, int screenh) = 0;
  virtual ErrorCode I_Exit() = 0;
  virtual ErrorCode I_Update() = 0;
  virtual ErrorCode I_DrawArrays(int count) = 0;
  virtual ErrorCode I_BeginDraw() = 0;
  virtual ErrorCode I_SetClearColor(color_t color) = 0;
  virtual color_t I_GetClearColor() = 0;

private:
  static Renderer *s_instance;
};
} // namespace Base