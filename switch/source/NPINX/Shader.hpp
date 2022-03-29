#pragma once

namespace Npi
{
    class Shader
    {
        public:
        Shader();
        ~Shader();

        private:
        GLuint vsh;
        GLuint fsh;
    };
}