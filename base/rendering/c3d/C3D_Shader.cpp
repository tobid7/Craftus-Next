#include <rendering/c3d/C3D_Shader.hpp>

namespace Base {
void C3D_Shader::Compile(const char *vertexcode, const char *fragmentcode,
                        const char *geometrycode) {

}

void C3D_Shader::CompileFile(const char *vertexPath, const char *fragmentPath,
                            const char *geometryPath) {
  
}

void C3D_Shader::use() { C3D_BindProgram(m_shader); }

void C3D_Shader::setBool(const std::string &name, bool value) {
  
}
void C3D_Shader::setInt(const std::string &name, int value) {

}
void C3D_Shader::setFloat(const std::string &name, float value) {

}
void C3D_Shader::setVec2(const std::string &name, const glm::vec2 &value) {

}
void C3D_Shader::setVec2(const std::string &name, float x, float y) {

}
void C3D_Shader::setVec3(const std::string &name, const glm::vec3 &value) {

}
void C3D_Shader::setVec3(const std::string &name, float x, float y, float z) {

}
void C3D_Shader::setVec4(const std::string &name, const glm::vec4 &value) {

}
void C3D_Shader::setVec4(const std::string &name, float x, float y, float z,
                        float w) {

}
void C3D_Shader::setMat2(const std::string &name, const glm::mat2 &mat) {

}
void C3D_Shader::setMat3(const std::string &name, const glm::mat3 &mat) {

}
void C3D_Shader::setMat4(const std::string &name, const glm::mat4 &mat) {

}

} // namespace Base