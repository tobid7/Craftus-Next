#include <rendering/c3d/C3D_Shader.hpp>

namespace Base {
void C3D_Shader::LoadFile(const char *vertexPath, const char *fragmentPath,
                         const char *geometryPath) {
  
}

void C3D_Shader::LoadCode(const char *vertexShaderCode,
                         const char *fragmentShaderCode,
                         const char *geometryShaderCode) {
  
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