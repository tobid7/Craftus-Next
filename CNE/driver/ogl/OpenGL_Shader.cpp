#include "OpenGL_Shader.hpp"
#define GLAD_OPTION_GL_HEADER_ONLY
#include <glad.h>

namespace CNE
{
    GL_Shader::GL_Shader()
    {
        //Nothing
    }
    GL_Shader::~GL_Shader()
    {

    }
    bool GL_Shader::CompileFile(const char* vertex, const char* fragment)
    {
        //retrieve the vertex/fragment source code from filePath
        std::string vertexCode;
        std::string fragmentCode;
        std::ifstream vShaderFile;
        std::ifstream fShaderFile;
        // ensure ifstream objects can throw exceptions:
        vShaderFile.exceptions (std::ifstream::failbit | std::ifstream::badbit);
        fShaderFile.exceptions (std::ifstream::failbit | std::ifstream::badbit);
        try 
        {
            vShaderFile.open(vertex);
            fShaderFile.open(fragment);
            std::stringstream vShaderStream, fShaderStream;
            vShaderStream << vShaderFile.rdbuf();
            fShaderStream << fShaderFile.rdbuf();		
            vShaderFile.close();
            fShaderFile.close();
            vertexCode   = vShaderStream.str();
            fragmentCode = fShaderStream.str();		
        }
        catch(std::ifstream::failure e)
        {
            std::cout << "ERROR::SHADER::FILE_NOT_SUCCESFULLY_READ" << std::endl;
            return false;
        }
        const char* vShaderCode = vertexCode.c_str();
        const char* fShaderCode = fragmentCode.c_str();

        // 2. compile shaders
        unsigned int vertexsh, fragmentsh;
        int success;
        char infoLog[512];
        
        // vertex Shader
        vertexsh = glCreateShader(GL_VERTEX_SHADER);
        glShaderSource(vertexsh, 1, &vShaderCode, NULL);
        glCompileShader(vertexsh);
        glGetShaderiv(vertexsh, GL_COMPILE_STATUS, &success);
        if(!success)
        {
            glGetShaderInfoLog(vertexsh, 512, NULL, infoLog);
            std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
            return false;
        }

        // fragment Shader
        fragmentsh = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(fragmentsh, 1, &fShaderCode, NULL);
        glCompileShader(fragmentsh);
        glGetShaderiv(fragmentsh, GL_COMPILE_STATUS, &success);
        if(!success)
        {
            glGetShaderInfoLog(fragmentsh, 512, NULL, infoLog);
            std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
            return false;
        }
        
        // shader Program
        ID = glCreateProgram();
        glAttachShader(ID, vertexsh);
        glAttachShader(ID, fragmentsh);
        glLinkProgram(ID);
        glGetProgramiv(ID, GL_LINK_STATUS, &success);
        if(!success)
        {
            glGetProgramInfoLog(ID, 512, NULL, infoLog);
            std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
            return false;
        }

        // delete the shaders as they're linked into our program now and no longer necessary
        glDeleteShader(vertexsh);
        glDeleteShader(fragmentsh);
        return true;
    }
    bool GL_Shader::Compile(const char* vertex, const char* fragment)
    {
        // 2. compile shaders
        unsigned int vertexsh, fragmentsh;
        int success;
        char infoLog[512];
        
        // vertex Shader
        vertexsh = glCreateShader(GL_VERTEX_SHADER);
        glShaderSource(vertexsh, 1, &vertex, NULL);
        glCompileShader(vertexsh);
        glGetShaderiv(vertexsh, GL_COMPILE_STATUS, &success);
        if(!success)
        {
            glGetShaderInfoLog(vertexsh, 512, NULL, infoLog);
            std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
            return false;
        }

        // fragment Shader
        fragmentsh = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(fragmentsh, 1, &fragment, NULL);
        glCompileShader(fragmentsh);
        glGetShaderiv(fragmentsh, GL_COMPILE_STATUS, &success);
        if(!success)
        {
            glGetShaderInfoLog(fragmentsh, 512, NULL, infoLog);
            std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
            return false;
        }
        
        // shader Program
        ID = glCreateProgram();
        glAttachShader(ID, vertexsh);
        glAttachShader(ID, fragmentsh);
        glLinkProgram(ID);
        glGetProgramiv(ID, GL_LINK_STATUS, &success);
        if(!success)
        {
            glGetProgramInfoLog(ID, 512, NULL, infoLog);
            std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
            return false;
        }

        // delete the shaders as they're linked into our program now and no longer necessary
        glDeleteShader(vertexsh);
        glDeleteShader(fragmentsh);
        return true;
    }
    void GL_Shader::Use()
    {
        glUseProgram(ID);
    }
    int GL_Shader::GetID()
    {
        return ID;
    }
    void GL_Shader::setBool(const std::string &name, bool value)
    {
        glUniform1i(glGetUniformLocation(ID, name.c_str()), (int)value); 
    }  
    void GL_Shader::setInt(const std::string &name, int value)
    {
        glUniform1i(glGetUniformLocation(ID, name.c_str()), value); 
    }   
    void GL_Shader::setFloat(const std::string &name, float value)
    {
        glUniform1f(glGetUniformLocation(ID, name.c_str()), value); 
    }
    void GL_Shader::loadVector2(const std::string &name, const glm::vec2 &vect)
    {
        glUniform2f(glGetUniformLocation(ID, name.c_str()), vect.x, vect.y);
    }

    void GL_Shader::loadVector3(const std::string &name, const glm::vec3 &vect)
    {
        glUniform3f(glGetUniformLocation(ID, name.c_str()), vect.x, vect.y, vect.z);
    }

    void GL_Shader::loadVector4(const std::string &name, const glm::vec4 &vect)
    {
        glUniform4f(glGetUniformLocation(ID, name.c_str()), vect.x, vect.y, vect.z, vect.w);
    }

    void GL_Shader::loadMatrix4(const std::string &name, const glm::mat4 &matrix)
    {
        glUniformMatrix4fv(glGetUniformLocation(ID, name.c_str()), 1, GL_FALSE, /*glm::value_ptr(matrix)*/NULL);
    }
}