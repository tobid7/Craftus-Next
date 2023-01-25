#pragma once

static const char *const vertTri = R"text(
#version 330 core
layout (location = 0) in vec2 vertex;
layout (location = 0) in vec2 texc;

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