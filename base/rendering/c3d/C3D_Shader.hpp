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
        void I_CompileFile(const char* vertexPath, const char* fragmentPath, const char* geometryPath = nullptr) override;
        void I_Compile(const char* vertexcode, const char* fragmentcode, const char* geometrycode = nullptr) override;
        void I_use() override; 
        void I_setBool(const std::string &name, bool value) override;
        void I_setInt(const std::string &name, int value) override; 
        void I_setFloat(const std::string &name, float value) override;
        void I_setVec2(const std::string &name, const glm::vec2 &value) override; 
        void I_setVec2(const std::string &name, float x, float y) override; 
        void I_setVec3(const std::string &name, const glm::vec3 &value) override; 
        void I_setVec3(const std::string &name, float x, float y, float z) override; 
        void I_setVec4(const std::string &name, const glm::vec4 &value) override; 
        void I_setVec4(const std::string &name, float x, float y, float z, float w) override; 
        void I_setMat2(const std::string &name, const glm::mat2 &mat) override; 
        void I_setMat3(const std::string &name, const glm::mat3 &mat) override;
        void I_setMat4(const std::string &name, const glm::mat4 &mat) override;
        private:
        DVLB_s *m_dvlb;
        shaderProgram_s m_shader;
    };
}