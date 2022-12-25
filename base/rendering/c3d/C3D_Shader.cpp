#include <pica.hpp>
#include <rendering/c3d/C3D_Shader.hpp>

void CopyMatrixGlmToC3d(C3D_Mtx* dst, const glm::mat4& src)
{
  {
    glm::mat4 transMat = glm::transpose(src);

    dst->r[0].x = transMat[0][0];
    dst->r[0].y = transMat[0][1];
    dst->r[0].z = transMat[0][2];
    dst->r[0].w = transMat[0][3];

    dst->r[1].x = transMat[1][0];
    dst->r[1].y = transMat[1][1];
    dst->r[1].z = transMat[1][2];
    dst->r[1].w = transMat[1][3];

    dst->r[2].x = transMat[2][0];
    dst->r[2].y = transMat[2][1];
    dst->r[2].z = transMat[2][2];
    dst->r[2].w = transMat[2][3];

    dst->r[3].x = transMat[3][0];
    dst->r[3].y = transMat[3][1];
    dst->r[3].z = transMat[3][2];
    dst->r[3].w = transMat[3][3];
}
}

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
  CopyMatrixGlmToC3d(&matrix, mat);

  C3D_FVUnifMtx4x4(GPU_VERTEX_SHADER, shaderInstanceGetUniformLocation(m_shader.vertexShader, name.c_str()), &matrix);
}

} // namespace Base