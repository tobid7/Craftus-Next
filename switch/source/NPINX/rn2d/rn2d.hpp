#pragma once
#include "global.hpp"

namespace Npi
{
    class RN2D
    {
        public:
        RN2D();
        ~RN2D();

        private:
        glm::mat4 projection = glm::ortho(0.0f, 800.0f, 600.0f, 0.0f, -1.0f, 1.0f);
        Npi::Shader _2d("2d.vert", "2d.frag");unsigned int quadVAO;
        
        };
}