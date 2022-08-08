#include <API.hpp>
#include <NRenderer.hpp>
#include <OpenGL_Renderer.hpp>

namespace CNi
{
    G_API gapi = OPENGL;
    void SetApi(G_API t_api)
    {
        gapi = t_api;
    }
    CNE::NRenderer* GetRenderer()
    {
        switch(gapi)
        {
            case OPENGL:
            return new CNE::GL_Renderer();
            break;
            default:
            API_ERROR("Unknown Graphics API");
            API_EXIT_PANIC();
            break;
        }
    }
}