#pragma once
#include <headers.hpp>
#include <NRenderer.hpp>

#define API_ERROR(msg) std::cout << msg << std::endl;

#define API_EXIT_PANIC() exit(EXIT_FAILURE);

#define API_EXIT_ERROR(msg) ({      \
    std::cout << msg << std::endl;  \
    exit(EXIT_FAILURE);             \
})

namespace CNi
{
    enum G_API
    {
        OPENGL,
        VULKAN,
        CITRO3D         //3DS
    };
    extern G_API gapi;
    void SetApi(G_API t_api);
    CNi::NRenderer* GetRenderer();
}