#pragma once

namespace Npi
{
    class Shader
    {
        public:
        Shader(GLenum type, const char* source);
        ~Shader();
        GLuint GetProgram(){ return s_program; }
        private:
        GLuint vsh;
        GLuint fsh;
        static GLuint s_program;

    };
}