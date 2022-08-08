#include <API.hpp>
#include <NRenderer.hpp>
#include <OpenGL_Renderer.hpp>

CNi::NRenderer* GetApi()
    {
        switch (CNi::gapi)
        {
        case CNi::OPENGL:
            API_ERROR("OpenGL API");
            return new CNE::GL_Renderer();
            break;
    
        default:
            API_ERROR("Unknown API");
            return new CNi::NRenderer();
            break;
        }
    }

namespace CNi
{
    G_API gapi = OPENGL;
    void SetApi(G_API t_api)
    {
        gapi = t_api;
    }

    

    
    void SetUp()
    {
        API_ERROR("Setting Up API");
        Renderer* rende = nullptr;
        rende = GetApi();
        t_renderer = std::unique_ptr<CNi::NRenderer>{rende};
    }
}