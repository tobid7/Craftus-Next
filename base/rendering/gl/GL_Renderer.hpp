#pragma once
#include <Renderer.hpp>
#include <gl/gl.h>

namespace Base {
class GL_Renderer : public Renderer {
public:
  ErrorCode Init() override;
  ErrorCode Exit() override;
  ErrorCode Update() override;
  ErrorCode DrawArrays(int count) override;
};
} // namespace Base