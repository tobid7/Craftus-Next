#pragma once

static const char* const vertTri = R"text(
    #version 330 core
    layout (location = 0) in vec3 aPos;
    layout (location = 1) in vec2 aTexcoord;
    layout (location = 2) in vec4 aColor;
    out vec4 ourColor;
    void main()
    {
        gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
        ourColor = aColor;
    }
)text";

static const char* const fragTri = R"text(
    #version 330 core
    in vec4 ourColor;
    out vec4 fragColor;
    void main()
    {
        fragColor = ourColor;
    }
)text";