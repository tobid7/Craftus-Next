#include <rendering/c3d/C3D_VArray.hpp>

namespace Base {
void C3D_VertexArray::I_Create(const void *data, uint32_t numVertices,
                             size_t vtxsize) {
  attrinfo = C3D_GetAttrInfo();
  AttrInfo_Init(attrinfo);
  vbo_data = data;
}

void C3D_VertexArray::I_Destroy() {}

void C3D_VertexArray::I_Bind() {
  buffinfo = C3D_GetBufInfo();
  BufInfo_Init(buffinfo);
  BufInfo_Add(buffinfo, vbo_data, vtx_size, numAttr, 0x210);
}

void C3D_VertexArray::I_UnBind() {}

void C3D_VertexArray::I_AddAttrInfo(int index, int size, int type,
                                  bool normmalized, size_t stride,
                                  const void *pointer) {
  AttrInfo_AddLoader(attrinfo, index, GPU_FLOAT, size);
  numAttr++;
}

void C3D_VertexArray::I_UpdateSubData(const void *data, int offs, size_t size) {}
} // namespace Base