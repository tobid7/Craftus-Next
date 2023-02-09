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