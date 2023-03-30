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

#include <glm/glm.hpp>

#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

namespace Base {
class Shader {
public:
  virtual ~Shader() {}
  virtual void LoadFile(const char *vertexPath, const char *fragmentPath,
                        const char *geometryPath = nullptr) = 0;
  virtual void LoadCode(const char *vertexShaderCode,
                        const char *fragmentShaderCode,
                        const char *geometryShaderCode = nullptr) = 0;
  virtual void use() = 0;
  virtual void setBool(const std::string &name, bool value) const = 0;
  virtual void setInt(const std::string &name, int value) const = 0;
  virtual void setFloat(const std::string &name, float value) const = 0;
  virtual void setVec2(const std::string &name,
                       const glm::vec2 &value) const = 0;
  virtual void setVec2(const std::string &name, float x, float y) const = 0;
  virtual void setVec3(const std::string &name,
                       const glm::vec3 &value) const = 0;
  virtual void setVec3(const std::string &name, float x, float y,
                       float z) const = 0;
  virtual void setVec4(const std::string &name,
                       const glm::vec4 &value) const = 0;
  virtual void setVec4(const std::string &name, float x, float y, float z,
                       float w) = 0;
  virtual void setMat2(const std::string &name, const glm::mat2 &mat) const = 0;
  virtual void setMat3(const std::string &name, const glm::mat3 &mat) const = 0;
  virtual void setMat4(const std::string &name, const glm::mat4 &mat) const = 0;
};
} // namespace Base