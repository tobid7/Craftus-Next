/*  ____            __ _                   _   _           _   
*  / ___|_ __ __ _ / _| |_ _   _ ___      | \ | | _____  _| |_ 
* | |   | '__/ _` | |_| __| | | / __|_____|  \| |/ _ \ \/ / __|
* | |___| | | (_| |  _| |_| |_| \__ \_____| |\  |  __/>  <| |_ 
*  \____|_|  \__,_|_|  \__|\__,_|___/     |_| \_|\___/_/\_\\__|
*                                                              
*  _   _ ____ ___      ____ _____ ______ _____             
* | \ | |  _ \_ _|    |  _ \___  / /  _ \___  |_   ____  __
* |  \| | |_) | |_____| | | | / / /| | | | / /\ \ / /\ \/ /
* | |\  |  __/| |_____| |_| |/ / / | |_| |/ /  \ V /  >  < 
* |_| \_|_|  |___|    |____//_/_/  |____//_/    \_/  /_/\_\
* Copyright (C) 2022-2023 Tobi-D7, RSDuck, Onixiya, D7vx-Dev, NPI-D7
*/
#include <rendering/c3d/C3D_Shader.hpp>
#include <citro3d.h>
#include <3ds.h>

#include <pica.hpp>

//MemStorage
struct S_MShader{
    DVLB_s* m_dvlb;
    shaderProgram_s shader;
};

/// @brief Function To COnvert GLM to C3D
/// @param dst C3D Mtx
/// @param src Glm Mtx
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
void C3D_Shader::LoadCode(const char *vertexShaderCode,
                         const char *fragmentShaderCode,
                         const char *geometryShaderCode) {
  int ressize;
  S_MShader* shader = new S_MShader;
  char *vtx_bin = Pica::AssembleCode(vertexShaderCode, ressize);
  // Load the vertex shader, create a shader program and bind it
  shader->m_dvlb = DVLB_ParseFile((u32 *)vtx_bin, ressize);
  shaderProgramInit(&shader->shader);
  shaderProgramSetVsh(&shader->shader, &shader->m_dvlb->DVLE[0]);
  C3D_BindProgram(&shader->shader);
}

void C3D_Shader::LoadFile(const char *vertexPath, const char *fragmentPath,
                         const char *geometryPath) {
    int ressize;
    S_MShader* shader = new S_MShader;
  char *vtx_bin = Pica::AssembleFile(vertexPath, ressize);
  // Load the vertex shader, create a shader program and bind it
  shader->m_dvlb = DVLB_ParseFile((u32 *)vtx_bin, ressize);
  shaderProgramInit(&shader->shader);
  shaderProgramSetVsh(&shader->shader, &shader->m_dvlb->DVLE[0]);
  C3D_BindProgram(&shader->shader);
}

void C3D_Shader::use() { }

void C3D_Shader::setBool(const std::string &name, bool value) const {
  
}

void C3D_Shader::setInt(const std::string &name, int value) const {
}

void C3D_Shader::setFloat(const std::string &name, float value) const {
}

void C3D_Shader::setVec2(const std::string &name, const glm::vec2 &value) const {
}

void C3D_Shader::setVec2(const std::string &name, float x, float y) const {

}

void C3D_Shader::setVec3(const std::string &name, const glm::vec3 &value) const {

}

void C3D_Shader::setVec3(const std::string &name, float x, float y,
                        float z) const {

}

void C3D_Shader::setVec4(const std::string &name, const glm::vec4 &value) const {

}

void C3D_Shader::setVec4(const std::string &name, float x, float y, float z,
                        float w) {

}

void C3D_Shader::setMat2(const std::string &name, const glm::mat2 &mat) const {
}

void C3D_Shader::setMat3(const std::string &name, const glm::mat3 &mat) const {

}

void C3D_Shader::setMat4(const std::string &name, const glm::mat4 &mat) const {

}
} // namespace Base