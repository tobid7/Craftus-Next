#pragma once
#ifndef __BASE_BUILD__
#define __BASE_DESKTOP__
#endif
#if defined(__BASE_DESKTOP__) || defined(__BASE_NX__)
#include <gl/GL_Renderer.hpp>
#include <gl/GL_Texture.hpp>
#include <gl/GL_Varray.hpp>
#include <gl/GL_Shader.hpp>
#include <rendering/Vertex.hpp>

#elif defined(__BASE_CTR__)
#include <c3d/C3D_Renderer.hpp>
#include <c3d/C3D_Texture.hpp>
#include <c3d/C3D_Shader.hpp>
#include <c3d/C3D_VArray.hpp>

#else
#include <Renderer.hpp>
#include <Texture.hpp>
#include <Shader.hpp>
#include <VArray.hpp>
#endif