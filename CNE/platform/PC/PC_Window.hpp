#pragma once
#include <NWindow.hpp>
#include <glfw/glfw3.h>

namespace CNi
{
    class PC_Window : public NWindow
    {
        public:
        PC_Window();
        ~PC_Window() override;
        CNi::Parameter GetWindow() override;
        private:
        GLFWwindow* window;
    };
}