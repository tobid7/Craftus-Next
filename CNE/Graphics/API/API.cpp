#include <API.hpp>
#include <NRenderer.hpp>
#include <OpenGL_Renderer.hpp>
#include <VK_Renderer.hpp>

namespace CNi
{
    G_API gapi = OPENGL;
    void SetApi(G_API t_api)
    {
        gapi = t_api;
    }
    CNi::NRenderer* GetRenderer()
    {
        switch(gapi)
        {
            case OPENGL:
            return new CNi::GL_Renderer();
            break;
            case VULKAN:
            //return new CNi::VK_Renderer();
            API_ERROR("Vulkan Not Supported yet");
            break;
            default:
            API_ERROR("Unknown Graphics API");
            API_EXIT_PANIC();
            break;
        }
    }
}