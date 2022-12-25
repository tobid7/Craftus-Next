#pragma once
#include <citro3d.h>
#include <3ds.h>
#include <rendering/VArray.hpp>

namespace Base {
class C3D_VertexArray : public VertexArray {
public:
  C3D_VertexArray() {}
  ~C3D_VertexArray() {}
  void I_Create(const void *data, uint32_t numVertices, size_t vtxsize) override;
  void I_Destroy() override;
  void I_Bind() override;
  void I_UnBind() override;
  void I_AddAttrInfo(int index, int size, int type, bool normmalized,
                   size_t stride, const void *pointer) override;
  void I_UpdateSubData(const void *data, int offs, size_t size) override;

private:
  C3D_BufInfo *buffinfo;
  C3D_AttrInfo *attrinfo;
  const void* vbo_data;
  int vtx_size;
  int numVtx;
  int numAttr;
};

} // namespace Base