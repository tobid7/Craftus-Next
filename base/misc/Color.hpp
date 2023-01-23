#pragma once
#include <cstdint>

namespace Base {

class Color {
public:
  Color();
  Color(uint8_t t_r, uint8_t t_g, uint8_t t_b);
  Color(uint8_t t_r, uint8_t t_g, uint8_t t_b, uint8_t t_a);
  void setColor(uint8_t t_r, uint8_t t_g, uint8_t t_b);
  void setColor(uint8_t t_r, uint8_t t_g, uint8_t t_b, uint8_t t_a);
  void setColor(uint8_t t_r, uint8_t t_g, uint8_t t_b, float t_a);
  void setRed(uint8_t t_r);
  uint8_t getRed();
  void setGreen(uint8_t t_g);
  uint8_t getGreen();
  void setBlue(uint8_t t_b);
  uint8_t getBlue();
  void setAlpha(uint8_t t_a);
  uint8_t getAlpha();
  uint32_t getRgba8();
  uint32_t getRgb8();
  static inline uint32_t rgba8(int t_red, int t_green, int t_blue,
                          int t_alpha = 255) {
    return ((((t_alpha)&0xFF) << 24) | (((t_blue)&0xFF) << 16) |
            (((t_green)&0xFF) << 8) | (((t_red)&0xFF) << 0));
  }

private:
  /* data */
  uint8_t m_red, m_green, m_blue, m_alpha;
};
} // namespace Base