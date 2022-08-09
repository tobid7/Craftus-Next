#include <PC_Window.hpp>


namespace CNi
{
    PC_Window::PC_Window()
    {
        
    }
    
    PC_Window::~PC_Window()
    {
        
    }
    
    CNi::Parameter PC_Window::GetWindow()
    {
        return CNi::Parameter(window);
    }
}