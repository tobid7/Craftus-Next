#pragma once
#include <gl/gl.h>
#include <rendering/VArray.hpp>

namespace Base {
class GL_VertexArray : public VertexArray {
public:
  GL_VertexArray() {}
  ~GL_VertexArray() {}
  void Create(const void *data, uint32_t numVertices, size_t vtxsize) override;
  void Destroy() override;
  void Bind() override;
  void UnBind() override;
  void AddAttrInfo(int index, int size, int type, bool normmalized,
                   size_t stride, const void *pointer) override;
  void UpdateSubData(const void *data, int offs, size_t size) override;

private:
  GLuint vao, vbo;
};
} // namespace Base