#pragma once

static const char *const vertTri = R"text(
    #version 330 core
    layout (location = 0) in vec2 aPos;
    layout (location = 2) in vec4 aColor;

    uniform mat4 model;
    uniform mat4 projection;

    out vec4 ourColor;
    void main()
    {
        gl_Position = projection * model *  vec4(aPos.x, aPos.y, 0.0, 1.0);
        ourColor = aColor;
    }
)text";

static const char *const fragTri = R"text(
    #version 330 core
    in vec4 ourColor;
    out vec4 fragColor;
    void main()
    {
        fragColor = ourColor;
    }
)text";