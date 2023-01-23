#pragma once

#include <objects/Object.hpp>
#include <rendering/Vertex.hpp>


namespace Base {
class Renderer {
public:
  virtual ~Renderer(){};
  virtual void Init() = 0;
  virtual void Render() = 0;
  virtual void AddObject(Base::Object &obj);
};
} // namespace Base