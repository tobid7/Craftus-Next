#pragma once
#ifndef __BASE_BUILD__
#define __BASE_DESKTOP__
#endif
#if defined(__BASE_DESKTOP__)
#include <gl/GL_Renderer.hpp>
#include <gl/GL_Texture.hpp>
#include <gl/GL_Varray.hpp>
#include <gl/GL_Shader.hpp>
#include <rendering/Vertex.hpp>

typedef Base::GL_Renderer BaseRenderer;
typedef Base::GL_Texture BaseTexture;
typedef Base::GL_VertexArray BaseVertexArray;
typedef Base::GL_Shader BaseShader;
#elif defined(__BASE_CTR__)
#include <c3d/C3D_Renderer.hpp>
#include <c3d/C3D_Texture.hpp>
#include <c3d/C3D_Shader.hpp>
#include <c3d/C3D_VArray.hpp>

typedef Base::C3D_Renderer BaseRenderer;
typedef Base::C3D_Texture BaseTexture;
typedef Base::C3D_VertexArray BaseVertexArray;
typedef Base::C3D_Shader BaseShader;

#else
#include <Renderer.hpp>
#include <Texture.hpp>
#include <Shader.hpp>
#include <VArray.hpp>
typedef Base::Renderer BaseRenderer;
typedef Base::Texture BaseTexture;
typedef Base::VertexArray BaseVertexArray;
typedef Base::Shader BaseShader;
#endif