#pragma once
#include <cstdint>

#include <cstring>
#include <string>

class color_t {
public:
  color_t() {
    m_r = 255;
    m_g = 255;
    m_b = 255;
    m_a = 255;
  }
  color_t(uint8_t r, uint8_t g, uint8_t b, uint8_t a = 255) {
    m_r = r;
    m_g = g;
    m_b = b;
    m_a = a;
  }
  color_t(std::string hexval, uint8_t a = 255) { m_a = a; }
  ~color_t() {}
  uint8_t r() { return m_r; }
  uint8_t g() { return m_g; }
  uint8_t b() { return m_b; }
  uint8_t a() { return m_a; }
  uint32_t rgba() {
    return ((((m_a)&0xFF) << 24) | (((m_b)&0xFF) << 16) | (((m_g)&0xFF) << 8) |
            (((m_r)&0xFF) << 0));
  }
  uint32_t rgb() {
    return (((((m_b)&0xFF) << 16) | (((m_g)&0xFF) << 8) | (((m_r)&0xFF) << 0)));
  }

private:
  uint8_t m_r;
  uint8_t m_g;
  uint8_t m_b;
  uint8_t m_a;
};