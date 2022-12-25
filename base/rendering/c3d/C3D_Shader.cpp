#include <pica.hpp>
#include <rendering/c3d/C3D_Shader.hpp>

namespace Base {
void C3D_Shader::I_Compile(const char *vertexcode, const char *fragmentcode,
                           const char *geometrycode) {
  int ressize;
  char *vtx_bin = Pica::AssembleCode(vertexcode, ressize);
  // Load the vertex shader, create a shader program and bind it
  m_dvlb = DVLB_ParseFile((u32 *)vtx_bin, ressize);
  shaderProgramInit(&m_shader);
  shaderProgramSetVsh(&m_shader, &m_dvlb->DVLE[0]);
  C3D_BindProgram(&m_shader);
}

void C3D_Shader::I_CompileFile(const char *vertexPath, const char *fragmentPath,
                               const char *geometryPath) {
  int ressize;
  char *vtx_bin = Pica::AssembleFile(vertexPath, ressize);
  // Load the vertex shader, create a shader program and bind it
  m_dvlb = DVLB_ParseFile((u32 *)vtx_bin, ressize);
  shaderProgramInit(&m_shader);
  shaderProgramSetVsh(&m_shader, &m_dvlb->DVLE[0]);
  C3D_BindProgram(&m_shader);
}

void C3D_Shader::I_use() { C3D_BindProgram(&m_shader); }

void C3D_Shader::I_setBool(const std::string &name, bool value) {}
void C3D_Shader::I_setInt(const std::string &name, int value) {}
void C3D_Shader::I_setFloat(const std::string &name, float value) {}
void C3D_Shader::I_setVec2(const std::string &name, const glm::vec2 &value) {}
void C3D_Shader::I_setVec2(const std::string &name, float x, float y) {}
void C3D_Shader::I_setVec3(const std::string &name, const glm::vec3 &value) {}
void C3D_Shader::I_setVec3(const std::string &name, float x, float y, float z) {
}
void C3D_Shader::I_setVec4(const std::string &name, const glm::vec4 &value) {}
void C3D_Shader::I_setVec4(const std::string &name, float x, float y, float z,
                           float w) {}
void C3D_Shader::I_setMat2(const std::string &name, const glm::mat2 &mat) {}
void C3D_Shader::I_setMat3(const std::string &name, const glm::mat3 &mat) {}
void C3D_Shader::I_setMat4(const std::string &name, const glm::mat4 &mat) {
  C3D_Mtx matrix;
  matrix.m[3] = mat[0];
  matrix.m[7] = mat[1];
  matrix.m[11] = mat[2];
  matrix.m[15] = mat[3];
  matrix.m[2] = mat[4];
  matrix.m[6] = mat[5];
  matrix.m[10] = mat[6];
  matrix.m[14] = mat[7];
  matrix.m[1] = mat[8];
  matrix.m[5] = mat[9];
  matrix.m[9] = mat[10];
  matrix.m[13] = mat[11];
  matrix.m[0] = mat[12];
  matrix.m[4] = mat[13];
  matrix.m[8] = mat[14];
  matrix.m[12] = mat[15];

  C3D_FVUnifMtx4x4(GPU_VERTEX_SHADER, shaderInstanceGetUniformLocation(m_shader.vertexShader, name.c_str()), &matrix);
}

} // namespace Base