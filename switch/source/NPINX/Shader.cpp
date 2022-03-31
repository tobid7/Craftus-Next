#include "global.hpp"

namespace Npi
{
    Shader::Shader(GLenum type, const char* source)
    {
        if (type == GL_VERTEX_SHADER)
        {
            this->vsh = this->CompileVertexShader(type, source);
        }
        if (type == GL_FRAGMENT_SHADER)
        {
            this->fsh = this->CompileFragmentShader(type, source);
        }
        else
        {
            //NOTHING
        }
        s_program = glCreateProgram();
        glAttachShader(s_program, vsh);
        glAttachShader(s_program, fsh);
        glLinkProgram(s_program);

        GLint success;
        glGetProgramiv(s_program, GL_LINK_STATUS, &success);
        if (!success)
        {
            char buf[512];
            glGetProgramInfoLog(s_program, sizeof(buf), nullptr, buf);
            TRACE("Link error: %s", buf);
        }
        glDeleteShader(vsh);
        glDeleteShader(fsh);
    }
    Shader::Shader(const char* verts, const char* frags)
    {
        this->vsh = this->CompileVertexShader(GL_VERTEX_SHADER, verts);
        this->fsh = this->CompileFragmentShader(GL_FRAGMENT_SHADER, frags);
        s_program = glCreateProgram();
        glAttachShader(s_program, vsh);
        glAttachShader(s_program, fsh);
        glLinkProgram(s_program);

        GLint success;
        glGetProgramiv(s_program, GL_LINK_STATUS, &success);
        if (!success)
        {
            char buf[512];
            glGetProgramInfoLog(s_program, sizeof(buf), nullptr, buf);
            TRACE("Link error: %s", buf);
        }
        glDeleteShader(vsh);
        glDeleteShader(fsh);
    }
    Shader::~Shader()
    {
        glDeleteProgram(s_program);
    }
    GLuint Shader::CompileVertexShader(GLenum type, const char* source)
    {
        GLint success;
        GLchar msg[512];

        GLuint handle = glCreateShader(type);
        if (!handle)
        {
            TRACE("%u: cannot create shader", type);
            return 0;
        }
        glShaderSource(handle, 1, &source, nullptr);
        glCompileShader(handle);
        glGetShaderiv(handle, GL_COMPILE_STATUS, &success);

        if (!success)
        {
            glGetShaderInfoLog(handle, sizeof(msg), nullptr, msg);
            TRACE("%u: %s\n", type, msg);
            glDeleteShader(handle);
            return 0;
        }

        return handle;
    }
    GLuint Shader::CompileFragmentShader(GLenum type, const char* source)
    {
        GLint success;
        GLchar msg[512];

        GLuint handle = glCreateShader(type);
        if (!handle)
        {
            TRACE("%u: cannot create shader", type);
            return 0;
        }
        glShaderSource(handle, 1, &source, nullptr);
        glCompileShader(handle);
        glGetShaderiv(handle, GL_COMPILE_STATUS, &success);

        if (!success)
        {
            glGetShaderInfoLog(handle, sizeof(msg), nullptr, msg);
            TRACE("%u: %s\n", type, msg);
            glDeleteShader(handle);
            return 0;
        }

        return handle;
    }
    void Shader::Use()
    {
        glUseProgram(s_program);
    }
}