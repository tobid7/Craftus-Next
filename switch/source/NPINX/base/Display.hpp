#pragma once
#include "global.hpp"

namespace Npi
{
    class Display
    {
        public:
        Display(NWindow* win);
        ~Display();
        void SwapBuffers();
        EGLDisplay GetEGLDisplay(){return s_display;}
        EGLContext GetEGLContext(){return s_context;}
        EGLSurface GetEGLSurface(){return s_surface;}

        private:
        static EGLDisplay s_display;
        static EGLContext s_context;
        static EGLSurface s_surface;
    };
}