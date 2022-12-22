#pragma once
#include <Error.hpp>

namespace Base {
class VertexArray {
public:
  virtual void Create(const void *data, uint32_t numVertices,
                      size_t vtxsize) = 0;
  virtual void AddAttrInfo(int index, int size, int type, bool normmalized,
                           size_t stride, const void *pointer) = 0;
  virtual void UpdateSubData(const void *data, int offs, size_t size) = 0;
  virtual void Destroy() = 0;
  virtual void Bind() = 0;
  virtual void UnBind() = 0;
};
} // namespace Base