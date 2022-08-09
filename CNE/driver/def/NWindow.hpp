#pragma once
#include <headers.hpp>

namespace CNi
{
    class NWindow
    {
        public:
        virtual ~NWindow(){}
        virtual CNi::Parameter GetWindow() = 0;
        
    };
}