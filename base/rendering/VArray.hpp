#pragma once
#include <Error.hpp>

namespace Base {
class VertexArray {
public:
  void LD7();
  inline void Create(const void *data, uint32_t numVertices, size_t vtxsize) {
    s_instance->I_Create(data, numVertices, vtxsize);
  }
  inline void AddAttrInfo(int index, int size, int type, bool normmalized,
                   size_t stride, const void *pointer) {
    s_instance->I_AddAttrInfo(index, size, type, normmalized, stride, pointer);
  }
  inline void UpdateSubData(const void *data, int offs, size_t size) {
    s_instance->I_UpdateSubData(data, offs, size);
  }
  inline void Destroy() { s_instance->I_Destroy(); }
  inline void Bind() { s_instance->I_Bind(); }
  inline void UnBind() { s_instance->I_UnBind(); }

protected:
  virtual void I_Create(const void *data, uint32_t numVertices,
                        size_t vtxsize) = 0;
  virtual void I_AddAttrInfo(int index, int size, int type, bool normmalized,
                             size_t stride, const void *pointer) = 0;
  virtual void I_UpdateSubData(const void *data, int offs, size_t size) = 0;
  virtual void I_Destroy() = 0;
  virtual void I_Bind() = 0;
  virtual void I_UnBind() = 0;

private:
  static VertexArray *s_instance;
};
} // namespace Base