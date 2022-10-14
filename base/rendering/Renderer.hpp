#ifndef __RENDERER_H__
#define __RENDERER_H__

#include <Error.hpp>

namespace CN
{
    class Renderer
    {   
        public:
        virtual ErrorCode Init() = 0;
        virtual ErrorCode Exit() = 0;
        virtual ErrorCode Update() = 0;
    }; 
} // namespace CN

#endif // __RENDERER_H__