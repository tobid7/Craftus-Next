#pragma once

#include <string>
#include <vector>

namespace CNE
{
    class SpriteBatch
    {
        public:
        virtual ~SpriteBatch();
        virtual void Init();
        virtual void Render();
    };
}