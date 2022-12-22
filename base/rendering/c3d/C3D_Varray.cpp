#include <rendering/c3d/C3D_VArray.hpp>

namespace Base {
void C3D_VertexArray::Create(const void *data, uint32_t numVertices,
                             size_t vtxsize) {
  attrinfo = C3D_GetAttrInfo();
  AttrInfo_Init(attrinfo);
  vbo_data = data;
}

void C3D_VertexArray::Destroy() {}

void C3D_VertexArray::Bind() {
  buffinfo = C3D_GetBufInfo();
  BufInfo_Init(buffinfo);
  BufInfo_Add(buffinfo, vbo_data, vtxsize, 3, 0x210);
}

void C3D_VertexArray::UnBind() {}

void C3D_VertexArray::AddAttrInfo(int index, int size, int type,
                                  bool normmalized, size_t stride,
                                  const void *pointer) {}

void C3D_VertexArray::AddAttrInfo(int index, int size, int type,
                                  bool normmalized, size_t stride,
                                  const void *pointer) {}

void C3D_VertexArray::UpdateSubData(const void *data, int offs, size_t size) {}
} // namespace Base