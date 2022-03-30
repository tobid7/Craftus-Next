#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <cstdint>
#include <string>
//Switch
#include <switch.h>
//OpenGL 4.6
#include <EGL/egl.h>
#include <EGL/eglext.h>
#include "glad.h"
// GLM headers
#define GLM_FORCE_PURE
#define GLM_ENABLE_EXPERIMENTAL
#include <glm/vec3.hpp>
#include <glm/vec4.hpp>
#include <glm/mat4x4.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/rotate_vector.hpp>
//Textures Loader
#include "sdb_image.h"
//Npi
    //Graphics
#include "Display.hpp"
#include "RObject.hpp"
#include "Shader.hpp"
#include "color.hpp"
#include "earcut.hpp"
#include "Vertex.hpp"
#include "texture.hpp"