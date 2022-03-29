#include "global.hpp"

namespace Npi
{
    Shader::Shader(GLenum type, const char* source)
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
}