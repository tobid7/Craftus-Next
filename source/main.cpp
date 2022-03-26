#include "NextGenSystems.hpp"

NGS::Game craftusnext("Craftus-Next");

int main()
{
    Npi::Renderer rn(true);
    rn.useCulling(true);
    rn.useFog(true, Npi::RenderContext::ScreenTarget::Top);
    Npi::Cube cube(1, 1, 1);
    while(craftusnext.IsRunning())
    {
        rn.drawTop(cube, Npi::RenderContext::Mode::_3D);
        rn.Render(true);    
    }

}