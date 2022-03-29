#pragma once
#include "global.hpp"

namespace Npi {
    //Short for Render Objective
    class RObject {
    public:
        virtual void draw(Npi::Display t_display) = 0;
    };
}