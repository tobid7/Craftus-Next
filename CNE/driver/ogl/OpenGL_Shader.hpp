#pragma once
#include "Shader.hpp"
#include "glm/glm.hpp"

namespace CNE
{
    class GL_Shader : public Shader
    {
        public:
        GL_Shader();
        ~GL_Shader();
        bool CompileFile(const char* vertex, const char* fragment) override;
        bool Compile(const char* vertex, const char* fragment) override;
        void Use() override;
        int GetID() override;
        void setBool(const std::string &name, bool value) override;  
        void setInt(const std::string &name, int value) override;   
        void setFloat(const std::string &name, float value) override;
        void loadVector2(const std::string &name, const glm::vec2 &vect);
        void loadVector3(const std::string &name, const glm::vec3 &vect);
        void loadVector4(const std::string &name, const glm::vec4 &vect);
        void loadMatrix4(const std::string &name, const glm::mat4 &matrix);
        private:
        int ID;
    };
}