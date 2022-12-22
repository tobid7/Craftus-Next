#pragma once
#include <citro3d.h>
#include <3ds.h>
#include <rendering/VArray.hpp>

namespace Base {
class C3D_VertexArray : public VertexArray {
public:
  C3D_VertexArray() {}
  ~C3D_VertexArray() {}
  void Create(const void *data, uint32_t numVertices, size_t vtxsize) override;
  void Destroy() override;
  void Bind() override;
  void UnBind() override;
  void AddAttrInfo(int index, int size, int type, bool normmalized,
                   size_t stride, const void *pointer) override;
  void UpdateSubData(const void *data, int offs, size_t size) override;

private:
  C3D_BufInfo *buffinfo;
  C3D_AttrInfo *attrinfo;
  const void* vbo_data;
  int vtx_size;
  int numVtx;
  int numAttr;
};

} // namespace Base