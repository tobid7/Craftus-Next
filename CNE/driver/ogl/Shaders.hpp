#pragma once
#include <iostream>

static const char* const vertMats = R"text(
    #version 330 core
    layout (location = 0) in vec3 aPos;
    layout (location = 1) in vec3 aNormal;

    out vec3 FragPos;
    out vec3 Normal;

    uniform mat4 model;
    uniform mat4 view;
    uniform mat4 projection;

    void main()
    {
        FragPos = vec3(model * vec4(aPos, 1.0));
        Normal = mat3(transpose(inverse(model))) * aNormal;  

        gl_Position = projection * view * vec4(FragPos, 1.0);
    }
)text";

static const char* const fragMats = R"text(
    #version 330 core
    out vec4 FragColor;

    struct Material {
        vec3 ambient;
        vec3 diffuse;
        vec3 specular;    
        float shininess;
    }; 

    struct Light {
        vec3 position;

        vec3 ambient;
        vec3 diffuse;
        vec3 specular;
    };

    in vec3 FragPos;  
    in vec3 Normal;  
    
    uniform vec3 viewPos;
    uniform Material material;
    uniform Light light;

    void main()
    {
        // ambient
        vec3 ambient = light.ambient * material.ambient;
    
        // diffuse 
        vec3 norm = normalize(Normal);
        vec3 lightDir = normalize(light.position - FragPos);
        float diff = max(dot(norm, lightDir), 0.0);
        vec3 diffuse = light.diffuse * (diff * material.diffuse);

        // specular
        vec3 viewDir = normalize(viewPos - FragPos);
        vec3 reflectDir = reflect(-lightDir, norm);  
        float spec = pow(max(dot(viewDir, reflectDir), 0.0), material.shininess);
        vec3 specular = light.specular * (spec * material.specular);  

        vec3 result = ambient + diffuse + specular;
        FragColor = vec4(result, 1.0);
    } 
)text";

static const char* const vertLightCube = R"text(
    #version 330 core
    layout (location = 0) in vec3 aPos;

    uniform mat4 model;
    uniform mat4 view;
    uniform mat4 projection;

    void main()
    {
    	gl_Position = projection * view * model * vec4(aPos, 1.0);
    }
)text";

static const char* const fragLightCube = R"text(
    #version 330 core
    out vec4 FragColor;

    void main()
    {
        FragColor = vec4(1.0); // set alle 4 vector values to 1.0
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