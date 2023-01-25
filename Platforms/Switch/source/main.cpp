#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <switch.h>

#include <EGL/egl.h>    // EGL library
#include <EGL/eglext.h> // EGL extensions
#include <glad/glad.h>  // glad library (OpenGL loader)

#include <Base.hpp>
#define LLC_ARRAYSIZE(x) ((int)(sizeof(x) / sizeof(*(x))))

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

static const char *const vertTri2 = R"text(
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

static const char *const fragTri2 = R"text(
    #version 330 core
    in vec4 ourColor;
    out vec4 fragColor;
    void main()
    {
        fragColor = ourColor;
    }
)text";

#include <unistd.h>
#define TRACE(fmt, ...)                                                        \
  printf("%s: " fmt "\n", __PRETTY_FUNCTION__, ##__VA_ARGS__)

// EGL Stuff
static EGLDisplay s_display;
static EGLContext s_context;
static EGLSurface s_surface;

static bool initEgl(NWindow *win) {
  // Connect to the EGL default display
  s_display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
  if (!s_display) {
    TRACE("Could not connect to display! error: %d", eglGetError());
    goto _fail0;
  }

  // Initialize the EGL display connection
  eglInitialize(s_display, nullptr, nullptr);

  // Select OpenGL (Core) as the desired graphics API
  if (eglBindAPI(EGL_OPENGL_API) == EGL_FALSE) {
    TRACE("Could not set API! error: %d", eglGetError());
    goto _fail1;
  }

  // Get an appropriate EGL framebuffer configuration
  EGLConfig config;
  EGLint numConfigs;
  static const EGLint framebufferAttributeList[] = {EGL_RENDERABLE_TYPE,
                                                    EGL_OPENGL_BIT,
                                                    EGL_RED_SIZE,
                                                    8,
                                                    EGL_GREEN_SIZE,
                                                    8,
                                                    EGL_BLUE_SIZE,
                                                    8,
                                                    EGL_ALPHA_SIZE,
                                                    8,
                                                    EGL_DEPTH_SIZE,
                                                    24,
                                                    EGL_STENCIL_SIZE,
                                                    8,
                                                    EGL_NONE};
  eglChooseConfig(s_display, framebufferAttributeList, &config, 1, &numConfigs);
  if (numConfigs == 0) {
    TRACE("No config found! error: %d", eglGetError());
    goto _fail1;
  }

  // Create an EGL window surface
  s_surface = eglCreateWindowSurface(s_display, config, win, nullptr);
  if (!s_surface) {
    TRACE("Surface creation failed! error: %d", eglGetError());
    goto _fail1;
  }

  // Create an EGL rendering context
  static const EGLint contextAttributeList[] = {
      EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR,
      EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR,
      EGL_CONTEXT_MAJOR_VERSION_KHR,
      4,
      EGL_CONTEXT_MINOR_VERSION_KHR,
      3,
      EGL_NONE};
  s_context =
      eglCreateContext(s_display, config, EGL_NO_CONTEXT, contextAttributeList);
  if (!s_context) {
    TRACE("Context creation failed! error: %d", eglGetError());
    goto _fail2;
  }

  // Connect the context to the surface
  eglMakeCurrent(s_display, s_surface, s_surface, s_context);
  return true;

_fail2:
  eglDestroySurface(s_display, s_surface);
  s_surface = nullptr;
_fail1:
  eglTerminate(s_display);
  s_display = nullptr;
_fail0:
  return false;
}

static void deinitEgl() {
  if (s_display) {
    eglMakeCurrent(s_display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
    if (s_context) {
      eglDestroyContext(s_display, s_context);
      s_context = nullptr;
    }
    if (s_surface) {
      eglDestroySurface(s_display, s_surface);
      s_surface = nullptr;
    }
    eglTerminate(s_display);
    s_display = nullptr;
  }
}

class Sprite : public Base::Object
{
public:
  Sprite()
  {
    Base::UiSquare vtx[] = {
        {{0.0f, 1.0f}, {0.0f, 1.0f}, {0, 0, 0, 0}},
        {{1.0f, 0.0f}, {1.0f, 0.0f}, {0, 0, 0, 0}},
        {{0.0f, 0.0f}, {0.0f, 0.0f}, {0, 0, 0, 0}},

        {{0.0f, 1.0f}, {0.0f, 1.0f}, {0, 0, 0, 0}},
        {{1.0f, 1.0f}, {1.0f, 1.0f}, {0, 0, 0, 0}},
        {{1.0f, 0.0f}, {1.0f, 0.0f}, {0, 0, 0, 0}},
    };
    trishader = new BaseShader();
    trishader->LoadCode(vertTri, fragTri);
    trishader->use();

    vao_ = new BaseVertexArray();
    vao_->Create(&vtx, LLC_ARRAYSIZE(vtx), sizeof(Base::UiSquare));
    vao_->AddAttrInfo(0, 2, 0, false, sizeof(Base::UiSquare),
                      (void *)offsetof(Base::UiSquare, position));
    vao_->AddAttrInfo(1, 2, 0, false, sizeof(Base::UiSquare),
                      (void *)offsetof(Base::UiSquare, texcoords));
    vao_->AddAttrInfo(2, 4, 0, false, sizeof(Base::UiSquare),
                      (void *)offsetof(Base::UiSquare, color));
    vao_->UnBind();
  }
  void Draw(bvec2i raster_box) override
  {
    trishader->use();
    glm::mat4 projection = glm::ortho(0.0f, (float)raster_box.x, (float)raster_box.y, 0.0f, -1.0f, 1.0f);
    glm::mat4 model = glm::mat4(1.0f);
    model = glm::translate(model, glm::vec3(glm::vec2(100, 100), 0.0f));

    model = glm::translate(model, glm::vec3(0.5f * texture->GetSize().x, 0.5f * texture->GetSize().y, 0.0f));
     model =
       glm::rotate(model, glm::radians(0.0f), glm::vec3(0.0f, 0.0f, 1.0f));
    model = glm::translate(model, glm::vec3(-0.5f * texture->GetSize().x, -0.5f * texture->GetSize().y, 0.0f));

    model = glm::scale(model, glm::vec3(texture->GetSize().x, texture->GetSize().y, 1.0f));

    this->trishader->setMat4("projection", projection);
    this->trishader->setMat4("model", model);
    this->trishader->setVec3("spriteColor", glm::vec3(1.0f));
    texture->Bind();
    vao_->Bind();
    Base_drawArrays(0, 6);
  }

  void SetTexture(BaseTexture &tex) { texture = &tex; }

private:
  BaseVertexArray *vao_;
  BaseShader *trishader;
  BaseTexture *texture;
};

int main() {
  if (!initEgl(nwindowGetDefault()))
    return EXIT_FAILURE;
  gladLoadGL();
  // Configure our supported input layout: a single player with standard
  // controller styles
  padConfigureInput(1, HidNpadStyleSet_NpadStandard);
  // Initialize the default gamepad (which reads handheld  mode inputs as well
  // as the first connected controller)
  PadState pad;
  padInitializeDefault(&pad);
  Base::Init();
  auto ren = new BaseRenderer();
  int renw = 1280;
  int renh = 720;

  ren->Init(renw, renh);
  Sprite tri;
  BaseTexture text_;
  text_.LoadFile("romfs:/loading.png");
  tri.SetTexture(text_);
  // Main graphics loop
  while (appletMainLoop()) {
    padUpdate(&pad);
    u32 kDown = padGetButtonsDown(&pad);
    if (kDown & HidNpadButton_Plus)
      break;
    ren->AddObject(tri);
    ren->Render();

    eglSwapBuffers(s_display, s_surface);
  }

  // Deinitialize EGL
  deinitEgl();
  return EXIT_SUCCESS;
}