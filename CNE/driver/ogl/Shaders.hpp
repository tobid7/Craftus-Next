#pragma once
#include <iostream>

static const char* const vertBasic = R"text(
    #version 330

    layout(location = 0) in vec3 inVertexPosition;
    layout(location = 1) in vec2 inTextureCoord;

    out vec2 passTextureCoord;

    uniform mat4 projViewMatrix;
    uniform mat4 modelMatrix;

    void main()
    {
        gl_Position = projViewMatrix * modelMatrix * vec4(inVertexPosition, 1.0);

        passTextureCoord = inTextureCoord;
    }
)text";

static const char* const vert2D_Basic = R"text(
    #version 330

    layout(location = 0) in vec3 inVertexPosition;
    layout(location = 1) in vec2 inTextureCoord;
    layout(location = 2) in vec4 color;

    out vec2 passTextureCoord;
    out vec4 outcolor

    void main()
    {
    	gl_Position = vec4(inVertexPosition, 1.0);
        outcolor = color;
    	passTextureCoord = inTextureCoord;
    }
)text";

static const char* const fragBasic = R"text(
    #version 330 core
    out vec4 outColour;
    in  vec2 passTextureCoord;
    void main()
    {
        vec4 colour = texture(texSampler, passTextureCoord);
    
        outColour = colour;
    }
)text";