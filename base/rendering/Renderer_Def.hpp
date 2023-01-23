#pragma once

#ifndef __BASE_BUILD__
#define __BASE_DESKTOP__
#endif

#if (defined(__BASE_DESKTOP__) || defined(__BASE__NX__))
#include <gl/GL_Renderer.hpp>
#include <gl/GL_Texture.hpp>
// #include <gl/GL_VertexArray.hpp>
// #include <gl/GL_Shader.hpp>
#include <rendering/Vertex.hpp>

typedef Base::GL_Renderer BaseRenderer;
typedef Base::GL_Texture BaseTexture;

#elif defined(__BASE_CTR__)
#include <c3d/C3D_Renderer.hpp>
#include <c3d/C3D_Shader.hpp>
#include <c3d/C3D_Texture.hpp>
#include <c3d/C3D_VertexArray.hpp>

typedef Base::C3D_Renderer BaseRenderer;
typedef Base::C3D_Texture BaseTexture;

#else
#include <Renderer.hpp>
#include <Shader.hpp>
#include <Texture.hpp>
#include <VertexArray.hpp>

typedef Base::Renderer BaseRenderer;
typedef Base::Texture BaseTexture;
#endif