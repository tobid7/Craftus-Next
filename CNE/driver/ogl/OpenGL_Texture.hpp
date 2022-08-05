#pragma once
#include <Texture.hpp>

namespace CNE
{
    class GL_Texture : public CNE::Texture
    {
        public:
        GL_Texture(){}
        void Load(std::string path) override;
        void Free() override;

    };
}