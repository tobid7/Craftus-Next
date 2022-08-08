#pragma once
#include <headers.hpp>

#define API_ERROR(msg) ({std::ofstream err("api-error.txt", std::ios::app); \
    err << "Error: " << msg << std::endl; \
    err.close();})

#define API_EXIT_PANIC() exit(EXIT_FAILURE);

namespace CNi
{
    enum G_API
    {
        OPENGL,
        VULKAN
    };
    extern G_API gapi;
    void SetApi(G_API t_api);
    void SetUp();
}