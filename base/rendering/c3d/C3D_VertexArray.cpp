#include <iostream>
#include <map>
#include <rendering/c3d/C3D_VertexArray.hpp>
#include <string>
#include <vector>

namespace Base {
C3D_VertexArray::~C3D_VertexArray() { Destroy(); }

void C3D_VertexArray::Create(const void *data, uint32_t numVertices,
                            size_t vtxsize) {
 
}

void C3D_VertexArray::AddAttrInfo(int index, int size, int type,
                                 bool normmalized, size_t stride,
                                 const void *pointer) {

}

void C3D_VertexArray::UpdateSubData(const void *data, int offs, size_t size) {
}

void C3D_VertexArray::Destroy() {  }

void C3D_VertexArray::Bind() {  }

void C3D_VertexArray::UnBind() {  }
} // namespace Base