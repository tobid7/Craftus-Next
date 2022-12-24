#pragma once
#include <gl/gl.h>
#include <rendering/VArray.hpp>

namespace Base {
class GL_VertexArray : public VertexArray {
public:
  GL_VertexArray() {}
  ~GL_VertexArray() {}
  void I_Create(const void *data, uint32_t numVertices, size_t vtxsize) override;
  void I_Destroy() override;
  void I_Bind() override;
  void I_UnBind() override;
  void I_AddAttrInfo(int index, int size, int type, bool normmalized,
                   size_t stride, const void *pointer) override;
  void I_UpdateSubData(const void *data, int offs, size_t size) override;

private:
  GLuint vao, vbo;
};
} // namespace Base