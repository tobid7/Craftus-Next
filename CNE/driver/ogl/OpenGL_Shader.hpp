#pragma once
#include "Shader.hpp"
#include "glm/glm.hpp"
#define GLAD_OPTION_GL_HEADER_ONLY
#include <glad.h>

namespace CNi
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
        void setVec2(const std::string &name, const glm::vec2 &value) const
        { 
            glUniform2fv(glGetUniformLocation(ID, name.c_str()), 1, &value[0]); 
        }
        void setVec2(const std::string &name, float x, float y) const
        { 
            glUniform2f(glGetUniformLocation(ID, name.c_str()), x, y); 
        }
        // ------------------------------------------------------------------------
        void setVec3(const std::string &name, const glm::vec3 &value) const
        { 
            glUniform3fv(glGetUniformLocation(ID, name.c_str()), 1, &value[0]); 
        }
        void setVec3(const std::string &name, float x, float y, float z) const
        { 
            glUniform3f(glGetUniformLocation(ID, name.c_str()), x, y, z); 
        }
        // ------------------------------------------------------------------------
        void setVec4(const std::string &name, const glm::vec4 &value) const
        { 
            glUniform4fv(glGetUniformLocation(ID, name.c_str()), 1, &value[0]); 
        }
        void setVec4(const std::string &name, float x, float y, float z, float w) const
        { 
            glUniform4f(glGetUniformLocation(ID, name.c_str()), x, y, z, w); 
        }
        // ------------------------------------------------------------------------
        void setMat2(const std::string &name, const glm::mat2 &mat) const
        {
            glUniformMatrix2fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE, &mat[0][0]);
        }
        // ------------------------------------------------------------------------
        void setMat3(const std::string &name, const glm::mat3 &mat) const
        {
            glUniformMatrix3fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE, &mat[0][0]);
        }
        // ------------------------------------------------------------------------
        void setMat4(const std::string &name, const glm::mat4 &mat) const
        {
            glUniformMatrix4fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE, &mat[0][0]);
        }

        private:
        int ID;
    };
}