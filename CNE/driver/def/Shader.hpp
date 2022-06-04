#pragma once
#include "headers.hpp"

namespace CNE
{
    class Shader
    {
        public:
        virtual ~Shader(){}
        virtual bool Compile(const char* vertex, const char* fragment) = 0;
        virtual void Use() = 0;
        virtual int GetID() = 0;
        virtual void setBool(const std::string &name, bool value) = 0;  
        virtual void setInt(const std::string &name, int value) = 0;   
        virtual void setFloat(const std::string &name, float value) = 0;
    };
}