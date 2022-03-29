#include "global.hpp"

namespace Npi
{
    Display::Display(NWindow* win)
    {
        s_display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
        if (!s_display)
        {
            TRACE("Could not connect to display! error: %d", eglGetError());
            goto _fail0;
        }

        eglInitialize(s_display, nullptr, nullptr);
        if (eglBindAPI(EGL_OPENGL_API) == EGL_FALSE)
        {
            TRACE("Could not set API! error: %d", eglGetError());
            goto _fail1;
        }
        EGLConfig config;
        EGLint numConfigs;
        static const EGLint framebufferAttributeList[] =
        {
            EGL_RENDERABLE_TYPE, EGL_OPENGL_BIT,
            EGL_RED_SIZE,     8,
            EGL_GREEN_SIZE,   8,
            EGL_BLUE_SIZE,    8,
            EGL_ALPHA_SIZE,   8,
            EGL_DEPTH_SIZE,   24,
            EGL_STENCIL_SIZE, 8,
            EGL_NONE
        };
        eglChooseConfig(s_display, framebufferAttributeList, &config, 1, &numConfigs);
        if (numConfigs == 0)
        {
            TRACE("No config found! error: %d", eglGetError());
            goto _fail1;
        }

        s_surface = eglCreateWindowSurface(s_display, config, win, nullptr);
        if (!s_surface)
        {
            TRACE("Surface creation failed! error: %d", eglGetError());
            goto _fail1;
        }

        static const EGLint contextAttributeList[] =
        {
            EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR, EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR,
            EGL_CONTEXT_MAJOR_VERSION_KHR, 4,
            EGL_CONTEXT_MINOR_VERSION_KHR, 3,
            EGL_NONE
        };
        s_context = eglCreateContext(s_display, config, EGL_NO_CONTEXT, contextAttributeList);
        if (!s_context)
        {
            TRACE("Context creation failed! error: %d", eglGetError());
            goto _fail2;
        }

        eglMakeCurrent(s_display, s_surface, s_surface, s_context);
        return true;

    _fail2:
        eglDestroySurface(s_display, s_surface);
        s_surface = nullptr;
    _fail1:
        eglTerminate(s_display);
        s_display = nullptr;
    _fail0:
        return false;
    }
    Display::~Display()
    {
        if (s_display)
        {
            eglMakeCurrent(s_display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
            if (s_context)
            {
                eglDestroyContext(s_display, s_context);
                s_context = nullptr;
            }
            if (s_surface)
            {
                eglDestroySurface(s_display, s_surface);
                s_surface = nullptr;
            }
            eglTerminate(s_display);
            s_display = nullptr;
        }
    }
    void Display::SwapBuffers()
    {
        eglSwapBuffers(s_display, s_surface);
    }
}