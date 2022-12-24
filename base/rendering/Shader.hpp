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
        void LD7();
        inline void CompileFile(const char* vertexPath, const char* fragmentPath, const char* geometryPath = nullptr) {s_instance->I_CompileFile(vertexPath, fragmentPath, geometryPath);}
        inline void Compile(const char* vertexcode, const char* fragmentcode, const char* geometrycode = nullptr) {s_instance->I_Compile(vertexcode, fragmentcode, geometrycode);}
        inline void use() {s_instance->I_use();}; 
        inline void setBool(const std::string &name, bool value) {s_instance->I_setBool(name, value);}
        inline void setInt(const std::string &name, int value) {s_instance->I_setInt(name, value);} 
        inline void setFloat(const std::string &name, float value) {s_instance->I_setFloat(name, value);}
        inline void setVec2(const std::string &name, const glm::vec2 &value) {s_instance->I_setVec2(name, value);} 
        inline void setVec2(const std::string &name, float x, float y) {s_instance->I_setVec2(name, x, y);} 
        inline void setVec3(const std::string &name, const glm::vec3 &value) {s_instance->I_setVec3(name, value);} 
        inline void setVec3(const std::string &name, float x, float y, float z) {s_instance->I_setVec3(name, x, y, z);} 
        inline void setVec4(const std::string &name, const glm::vec4 &value) {s_instance->I_setVec4(name, value);}
        inline void setVec4(const std::string &name, float x, float y, float z, float w) {s_instance->I_setVec4(name, x, y, z, w);} 
        inline void setMat2(const std::string &name, const glm::mat2 &mat) {s_instance->I_setMat2(name, mat);} 
        inline void setMat3(const std::string &name, const glm::mat3 &mat) {s_instance->I_setMat3(name, mat);}
        inline void setMat4(const std::string &name, const glm::mat4 &mat) {s_instance->I_setMat4(name, mat);}
    protected:
    virtual void I_CompileFile(const char* vertexPath, const char* fragmentPath, const char* geometryPath = nullptr) = 0;
        virtual void I_Compile(const char* vertexcode, const char* fragmentcode, const char* geometrycode = nullptr) = 0;
        virtual void I_use() = 0; 
        virtual void I_setBool(const std::string &name, bool value) = 0;
        virtual void I_setInt(const std::string &name, int value) = 0; 
        virtual void I_setFloat(const std::string &name, float value) = 0;
        virtual void I_setVec2(const std::string &name, const glm::vec2 &value) = 0; 
        virtual void I_setVec2(const std::string &name, float x, float y) = 0; 
        virtual void I_setVec3(const std::string &name, const glm::vec3 &value) = 0; 
        virtual void I_setVec3(const std::string &name, float x, float y, float z) = 0; 
        virtual void I_setVec4(const std::string &name, const glm::vec4 &value) = 0; 
        virtual void I_setVec4(const std::string &name, float x, float y, float z, float w) = 0; 
        virtual void I_setMat2(const std::string &name, const glm::mat2 &mat) = 0; 
        virtual void I_setMat3(const std::string &name, const glm::mat3 &mat) = 0;
        virtual void I_setMat4(const std::string &name, const glm::mat4 &mat) = 0;
    private:
    static Shader* s_instance;
    };
}