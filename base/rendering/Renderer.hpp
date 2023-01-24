#pragma once

#include <misc/Color.hpp>
#include <objects/Object.hpp>
#include <rendering/Vertex.hpp>

namespace Base {
enum RMode {
  FLAT,
  THREED,
};
class Renderer {
public:
  virtual ~Renderer(){};
  virtual void Init(int &vieport_width, int &vieport_height) = 0;
  virtual void Clear() = 0;
  virtual void Render() = 0;
  virtual void AddObject(Base::Object &obj, RMode mode = RMode::FLAT,
                         int layer = 0) = 0;
};
} // namespace Base