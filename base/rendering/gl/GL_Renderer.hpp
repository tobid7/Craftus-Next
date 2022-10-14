#ifndef __GL_RENDERER_H__
#define __GL_RENDERER_H__

#include <Renderer.hpp>

namespace CN
{
    class GL_Renderer : public Renderer
    {
        public:
        ErrorCode Init() override;
        ErrorCode Exit() override;
        ErrorCode Update() override;
    };
}
#endif // __GL_RENDERER_H__