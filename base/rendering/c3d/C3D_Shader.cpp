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