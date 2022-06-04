#pragma once
#include "Shader.hpp"

namespace CNE
{
    class GL_Shader : public Shader
    {
        public:
        GL_Shader();
        ~GL_Shader();
        bool Compile(const char* vertex, const char* fragment) override;
        void Use() override;
        int GetID() override;
        void setBool(const std::string &name, bool value) override;  
        void setInt(const std::string &name, int value) override;   
        void setFloat(const std::string &name, float value) override;
        private:
        int ID;
    };
}