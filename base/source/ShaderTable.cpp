#include <ShaderTable.hpp>

static const char *const vertTri = R"text(
#version 330 core
//layout (location = 0) in vec2 vertex;
//layout (location = 1) in vec2 texc;
in vec2 vertex;
in vec2 texc;
out vec2 TexCoords;

uniform mat4 model;
uniform mat4 projection;

void main()
{
    TexCoords = texc;
    gl_Position = projection * model * vec4(vertex.xy, 0.0, 1.0);
}
)text";

static const char *const fragTri = R"text(

#version 330 core
in vec2 TexCoords;
out vec4 color;

uniform sampler2D image;
uniform vec3 spriteColor;

void main()
{    
    color = vec4(spriteColor, 1.0) * texture(image, TexCoords);
}  
)text";

namespace Base
{
    std::pair<std::string, std::string> GetShader(SHADER_ID s_id)
    {
        if(s_id == SHADER_SPRITE)
        {
            #if (defined(__BASE_CTR__))
            return std::make_pair("", "");
            #elif (defined(__BASE_DESKTOP__))
            return std::make_pair(vertTri, fragTri);
            #else
            return std::make_pair("", "");
            #endif
        }
        return std::make_pair("", "");
    }
}