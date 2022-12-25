#pragma once
#include <Error.hpp>
#include <misc/color_t.h>

namespace Base {
class Renderer {
public:
  void LD7();
  inline BaseErrorCode Init(int screenw, int screenh) {
    return s_instance->I_Init(screenw, screenh);
  };
  inline BaseErrorCode Exit() { return s_instance->I_Exit(); };
  inline BaseErrorCode Update() { return s_instance->I_Update(); };
  inline BaseErrorCode DrawArrays(int count) {
    return s_instance->I_DrawArrays(count);
  };
  inline BaseErrorCode BeginDraw() { return s_instance->I_BeginDraw(); };
  inline BaseErrorCode SetClearColor(color_t color) {
    return s_instance->I_SetClearColor(color);
  };
  inline color_t GetClearColor() { return s_instance->I_GetClearColor(); };

protected:
  virtual BaseErrorCode I_Init(int screenw, int screenh) = 0;
  virtual BaseErrorCode I_Exit() = 0;
  virtual BaseErrorCode I_Update() = 0;
  virtual BaseErrorCode I_DrawArrays(int count) = 0;
  virtual BaseErrorCode I_BeginDraw() = 0;
  virtual BaseErrorCode I_SetClearColor(color_t color) = 0;
  virtual color_t I_GetClearColor() = 0;

private:
  static Renderer *s_instance;
};
} // namespace Base