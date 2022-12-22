#include <rendering/gl/GL_Varray.hpp>

namespace Base {
void GL_VertexArray::Create(const void *data, uint32_t numVertices,
                            size_t vtxsize) {
  glGenVertexArrays(1, &vao);
  glBindVertexArray(vao);

  glGenBuffers(1, &vbo);
  glBindBuffer(GL_ARRAY_BUFFER, vbo);
  glBufferData(GL_ARRAY_BUFFER, numVertices * vtxsize, data, GL_STATIC_DRAW);
}

void GL_VertexArray::Destroy() { glDeleteBuffers(1, &vbo); }

void GL_VertexArray::Bind() { glBindVertexArray(vao); }

void GL_VertexArray::UnBind() { glBindVertexArray(0); }

void GL_VertexArray::AddAttrInfo(int index, int size, int type,
                                 bool normmalized, size_t stride,
                                 const void *pointer) {
  glEnableVertexAttribArray(index);
  glVertexAttribPointer(index, size, GL_FLOAT,
                        normmalized ? GL_FALSE : GL_FALSE, stride, pointer);
}

void GL_VertexArray::UpdateSubData(const void *data, int offs, size_t size) {
  glBufferSubData(GL_ARRAY_BUFFER, offs, size, data);
}
} // namespace Base