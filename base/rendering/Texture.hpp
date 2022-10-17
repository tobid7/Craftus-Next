#pragma once
#include <Error.hpp>

namespace Base
{
    class Texture
    {
        public:
        virtual ErrorCode Load(std::string file, int register_ = 0) = 0;
        virtual ErrorCode LoadMem(std::vector<unsigned char> mem, int register_ = 0) = 0;
        virtual ErrorCode Bind() = 0;
        virtual ErrorCode Destroy() = 0;
        virtual float GetW() = 0;
        virtual float GetH() = 0;
        virtual unsigned int GetRegID() = 0;
    };
}