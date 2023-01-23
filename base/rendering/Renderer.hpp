#pragma once

#include <objects/Object.hpp>
#include <rendering/Vertex.hpp>
#include <misc/Color.hpp>

namespace Base {
class Renderer {
public:
  virtual ~Renderer(){};
  virtual void Init(int &vieport_width, int &vieport_height) = 0;
  virtual void Render() = 0;
  virtual void AddObject(Base::Object &obj) = 0;
};
} // namespace Base