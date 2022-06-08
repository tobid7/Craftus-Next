#pragma once
#include <iostream>

static const char* const vertCube = R"text(
    #version 320 es
    precision mediump float;
    layout (location = 0) in vec3 inPos;
    layout (location = 1) in vec2 inTexCoord;
    layout (location = 2) in vec3 inNormal;
    out vec2 vtxTexCoord;
    out vec4 vtxNormalQuat;
    out vec3 vtxView;
    uniform mat4 mdlvMtx;
    uniform mat4 projMtx;
    void main()
    {
        // Calculate position
        vec4 pos = mdlvMtx * vec4(inPos, 1.0);
        vtxView = -pos.xyz;
        gl_Position = projMtx * pos;
        // Calculate normalquat
        vec3 normal = normalize(mat3(mdlvMtx) * inNormal);
        float z = (1.0 + normal.z) / 2.0;
        vtxNormalQuat = vec4(1.0, 0.0, 0.0, 0.0);
        if (z > 0.0)
        {
            vtxNormalQuat.z = sqrt(z);
            vtxNormalQuat.xy = normal.xy / (2.0 * vtxNormalQuat.z);
        }
        // Calculate texcoord
        vtxTexCoord = inTexCoord;
    }
)text";

static const char* const fragCube = R"text(
    #version 320 es
    precision mediump float;
    in vec2 vtxTexCoord;
    in vec4 vtxNormalQuat;
    in vec3 vtxView;
    out vec4 fragColor;
    uniform vec4 lightPos;
    uniform vec3 ambient;
    uniform vec3 diffuse;
    uniform vec4 specular; // w component is shininess
    uniform sampler2D tex_diffuse;
    // Rotate the vector v by the quaternion q
    vec3 quatrotate(vec4 q, vec3 v)
    {
        return v + 2.0*cross(q.xyz, cross(q.xyz, v) + q.w*v);
    }
    void main()
    {
        // Extract normal from quaternion
        vec4 normquat = normalize(vtxNormalQuat);
        vec3 normal = quatrotate(normquat, vec3(0.0, 0.0, 1.0));
        vec3 lightVec;
        if (lightPos.w != 0.0)
            lightVec = normalize(lightPos.xyz + vtxView);
        else
            lightVec = normalize(lightPos.xyz);
        vec3 viewVec = normalize(vtxView);
        vec3 halfVec = normalize(viewVec + lightVec);
        float diffuseFactor = max(dot(lightVec, normal), 0.0);
        float specularFactor = pow(max(dot(normal, halfVec), 0.0), specular.w);
        vec4 texDiffuseColor = texture(tex_diffuse, vtxTexCoord);
        vec3 fragLightColor = ambient + diffuseFactor*diffuse*texDiffuseColor.rgb + specularFactor*specular.xyz;
        fragColor = vec4(min(fragLightColor, 1.0), texDiffuseColor.a);
    }
)text";

static const char* const vertNX = R"text(
    #version 330 core
    layout (location = 0) in vec3 aPos;
    layout (location = 1) in vec3 aColor;
    out vec3 ourColor;
    void main()
    {
        gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
        ourColor = aColor;
    }
)text";

static const char* const fragNX = R"text(
    #version 330 core
    in vec3 ourColor;
    out vec4 fragColor;
    void main()
    {
        fragColor = vec4(ourColor, 1.0f);
    }
)text";