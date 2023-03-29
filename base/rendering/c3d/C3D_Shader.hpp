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
#pragma once
#include <rendering/Shader.hpp>

namespace Base {
class C3D_Shader : public Shader {
public:
  C3D_Shader() {}
  ~C3D_Shader() {}
  void LoadFile(const char *vertexPath, const char *fragmentPath,
                const char *geometryPath = nullptr) override;
  void LoadCode(const char *vertexShaderCode, const char *fragmentShaderCode,
                const char *geometryShaderCode = nullptr) override;
  void use() override;
  void setBool(const std::string &name, bool value) const override;
  void setInt(const std::string &name, int value) const override;
  void setFloat(const std::string &name, float value) const override;
  void setVec2(const std::string &name, const glm::vec2 &value) const override;
  void setVec2(const std::string &name, float x, float y) const override;
  void setVec3(const std::string &name, const glm::vec3 &value) const override;
  void setVec3(const std::string &name, float x, float y,
               float z) const override;
  void setVec4(const std::string &name, const glm::vec4 &value) const override;
  void setVec4(const std::string &name, float x, float y, float z,
               float w) override;
  void setMat2(const std::string &name, const glm::mat2 &mat) const override;
  void setMat3(const std::string &name, const glm::mat3 &mat) const override;
  void setMat4(const std::string &name, const glm::mat4 &mat) const override;

private:
  unsigned ID;
};
} // namespace Base