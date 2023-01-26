#pragma once
#include <rendering/Renderer_Def.hpp>
#include <map>

static const char *const vertText = R"text(
#version 330 core
layout (location = 0) in vec4 vertex; // <vec2 pos, vec2 tex>
out vec2 TexCoords;

uniform mat4 projection;

void main()
{
    gl_Position = projection * vec4(vertex.xy, 0.0, 1.0);
    TexCoords = vertex.zw;
}  
)text";

static const char *const fragText = R"text(
#version 330 core
in vec2 TexCoords;
out vec4 color;

uniform sampler2D text;
uniform vec3 textColor;

void main()
{    
    vec4 sampled = vec4(1.0, 1.0, 1.0, texture(text, TexCoords).r);
    color = vec4(textColor, 1.0) * sampled;
}  
)text";

namespace Base
{
    class Font
    {
    public:
        struct FChar
        {
            BaseTexture *tex;
            bvec2i size;
            bvec2i bearing;
            unsigned int advance;
        };

        Font();
        ~Font();
        void LoadTTF(std::string path);
        std::map<char, FChar> GetMap() { return m_chars; }

    private:
        std::map<char, FChar> m_chars;
    };

    class Text : public Base::Object
    {
    public:
        Text();
        ~Text();
        void Draw(bvec2i raster_box) override;

    private:
        std::string text = "Test";
        bvec2i position = bvec2i(0, 0);
        float scale = 24.f;
        BaseShader *textshader;
        BaseVertexArray *varray;
        Base::Font *fnt;
    };

}