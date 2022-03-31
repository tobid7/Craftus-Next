#pragma once
#include "global.hpp"

namespace Npi
{
    class Sprite : public Npi::RObject
    {
        public:
        Sprite(Npi::Texture tex, glm::vec2 position, glm::vec2 size, float rotation, Npi::Color col);
        Sprite(Npi::Texture tex, glm::vec2 position, glm::vec2 size, float rotation);
        Sprite(Npi::Texture tex, glm::vec2 position, glm::vec2 size);
        ~Sprite();
        void draw();
        

        private:
        glm::mat4 projection = glm::ortho(0.0f, 800.0f, 600.0f, 0.0f, -1.0f, 1.0f);
        Npi::Shader _2d;
        unsigned int quadVAO;
        glm::vec2 position;
        Npi::Texture tex;
        glm::vec2 size;
        float rotation;
        Npi::Color col;

        void init();

        };
}