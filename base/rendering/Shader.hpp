#pragma once 

#include <glm/glm.hpp>

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

namespace Base
{
    class Shader
    {
    public:
        virtual void CompileFile(const char* vertexPath, const char* fragmentPath, const char* geometryPath = nullptr) = 0;
        virtual void Compile(const char* vertexcode, const char* fragmentcode, const char* geometrycode = nullptr) = 0;
        virtual void use() = 0; 
        virtual void setBool(const std::string &name, bool value) = 0;
        virtual void setInt(const std::string &name, int value) = 0; 
        virtual void setFloat(const std::string &name, float value) = 0;
        virtual void setVec2(const std::string &name, const glm::vec2 &value) = 0; 
        virtual void setVec2(const std::string &name, float x, float y) = 0; 
        virtual void setVec3(const std::string &name, const glm::vec3 &value) = 0; 
        virtual void setVec3(const std::string &name, float x, float y, float z) = 0; 
        virtual void setVec4(const std::string &name, const glm::vec4 &value) = 0; 
        virtual void setVec4(const std::string &name, float x, float y, float z, float w) = 0; 
        virtual void setMat2(const std::string &name, const glm::mat2 &mat) = 0; 
        virtual void setMat3(const std::string &name, const glm::mat3 &mat) = 0;
        virtual void setMat4(const std::string &name, const glm::mat4 &mat) = 0;

    };
}