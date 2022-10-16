#ifndef __C3D_RENDERER_H__
#define __C3D_RENDERER_H__

#include <Renderer.hpp>

namespace Base
{
    class C3D_Renderer : public Renderer
    {
        public:
        ErrorCode Init() override;
        ErrorCode Exit() override;
        ErrorCode Update() override;
    };
}

#endif // __C3D_RENDERER_H__