#pragma once
#include <rendering/VertexArray.hpp>

namespace Base {
class GL_VertexArray : public VertexArray {
public:
  GL_VertexArray() {}
  ~GL_VertexArray();
  void Create(const void *data, uint32_t numVertices, size_t vtxsize) override;
  void AddAttrInfo(int index, int size, int type, bool normmalized,
                   size_t stride, const void *pointer) override;
  void UpdateSubData(const void *data, int offs, size_t size) override;
  void Destroy() override;
  void Bind() override;
  void UnBind() override;

private:
  int reg_vao = 0;
  unsigned vao = 0;
  unsigned vbo = 0;
};
} // namespace Base