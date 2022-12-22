#pragma once 
#include <rendering/Shader.hpp>
#include <citro3d.h>
#include <3ds.h>
#include <glm/glm.hpp>

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

namespace Base
{
    class C3D_Shader : public Shader
    {
    public:
        void CompileFile(const char* vertexPath, const char* fragmentPath, const char* geometryPath = nullptr) override;
        void Compile(const char* vertexcode, const char* fragmentcode, const char* geometrycode = nullptr) override;
        void use() override; 
        void setBool(const std::string &name, bool value) override;
        void setInt(const std::string &name, int value) override; 
        void setFloat(const std::string &name, float value) override;
        void setVec2(const std::string &name, const glm::vec2 &value) override; 
        void setVec2(const std::string &name, float x, float y) override; 
        void setVec3(const std::string &name, const glm::vec3 &value) override; 
        void setVec3(const std::string &name, float x, float y, float z) override; 
        void setVec4(const std::string &name, const glm::vec4 &value) override; 
        void setVec4(const std::string &name, float x, float y, float z, float w) override; 
        void setMat2(const std::string &name, const glm::mat2 &mat) override; 
        void setMat3(const std::string &name, const glm::mat3 &mat) override;
        void setMat4(const std::string &name, const glm::mat4 &mat) override;
        private:
        DVLB_s *m_dvlb;
        shaderProgram_s m_shader;
    };
}