/*  ____            __ _                   _   _           _   
*  / ___|_ __ __ _ / _| |_ _   _ ___      | \ | | _____  _| |_ 
* | |   | '__/ _` | |_| __| | | / __|_____|  \| |/ _ \ \/ / __|
* | |___| | | (_| |  _| |_| |_| \__ \_____| |\  |  __/>  <| |_ 
*  \____|_|  \__,_|_|  \__|\__,_|___/     |_| \_|\___/_/\_\\__|
*                                                              
*  _   _ ____ ___      ____ _____ ______ _____             
* | \ | |  _ \_ _|    |  _ \___  / /  _ \___  |_   ____  __
* |  \| | |_) | |_____| | | | / / /| | | | / /\ \ / /\ \/ /
* | |\  |  __/| |_____| |_| |/ / / | |_| |/ /  \ V /  >  < 
* |_| \_|_|  |___|    |____//_/_/  |____//_/    \_/  /_/\_\
* Copyright (C) 2022-2023 Tobi-D7, RSDuck, Onixiya, D7vx-Dev, NPI-D7
*/
#include <stdio.h>
#include <stdlib.h>

#include <3ds.h>
#include <citro2d.h>
#include <citro3d.h>

#include <Base.hpp>

#include <pica.hpp>

static const char *const vertShader = R"text(  
; Example PICA200 vertex shader

; Uniforms
.fvec projection[4]

; Constants
.constf myconst(0.0, 1.0, -1.0, 0.1)
.constf myconst2(0.3, 0.0, 0.0, 0.0)
.alias  zeros myconst.xxxx ; Vector full of zeros
.alias  ones  myconst.yyyy ; Vector full of ones

; Outputs
.out outpos position
.out outclr color

; Inputs (defined as aliases for convenience)
.alias inpos v0
.alias inclr v1

.proc main
	; Force the w component of inpos to be 1.0
	mov r0.xyz, inpos
	mov r0.w,   ones

	; outpos = projectionMatrix * inpos
	dp4 outpos.x, projection[0], r0
	dp4 outpos.y, projection[1], r0
	dp4 outpos.z, projection[2], r0
	dp4 outpos.w, projection[3], r0

	; outclr = inclr
	mov outclr, inclr

	; We're finished
	end
.end
)text";

// NImGui::Timer deltaclock;
Base::Timer frameclock;
int frames;
int fps = 0;
// float deltatime = 0.f;
//
std::string FrameRate() {
  frames++;
  if ((frameclock.Get() / 1000) >= 1.f) {
    fps = frames;
    frames = 0;
    frameclock.Reset();
  }
  return std::to_string(fps);
}

typedef struct {
  float position[3];
  float color[3];
} vertex;

static const vertex vertex_list[] = {
    {{200.0f, 200.0f, 0.5f}, {1, 0, 0}},
    {{100.0f, 40.0f, 0.5f}, {0, 1, 0}},
    {{300.0f, 40.0f, 0.5f}, {0, 0, 1}},
};

#define vertex_list_count (sizeof(vertex_list) / sizeof(vertex_list[0]))

// C2D_TextBuf tb;
C3D_RenderTarget *top;
int main(void) {
  aptInit();
  gfxInitDefault();
  consoleInit(GFX_BOTTOM, NULL);
  romfsInit();
  printf("test\n");
  std::cout << Base::GetPlatform() << std::endl;
  std::cout << Base::GetName() << std::endl;
  std::cout << Base::GetVersion() << std::endl;
  Base::Timer tm;

  C3D_Init(C3D_DEFAULT_CMDBUF_SIZE);
  C2D_Init(C2D_DEFAULT_MAX_OBJECTS);
  C2D_Prepare();

  int res_size; 
  Pica::AssembleCode(vertShader, res_size);

  // C2D_TextBufNew(900);
  // C2D_TextBufClear(tb);
  // C2D_FontLoadSystem(CFG_REGION_EUR);
  top = C2D_CreateScreenTarget(GFX_TOP, GFX_LEFT);
  //double ed = tm.GetAsMs();
  
  Base::Timer delta;
  double dt = 0;
  
  // Configure the first fragment shading substage to just pass through the
  // vertex color See https://www.opengl.org/sdk/docs/man2/xhtml/glTexEnv.xml
  // for more insight
  C3D_TexEnv *env = C3D_GetTexEnv(0);
  C3D_TexEnvInit(env);
  C3D_TexEnvSrc(env, C3D_Both, GPU_PRIMARY_COLOR, (GPU_TEVSRC)0, (GPU_TEVSRC)0);
  C3D_TexEnvFunc(env, C3D_Both, GPU_REPLACE);
  //glm::mat4 projection = glm::ortho(0.0f, static_cast<float>(400),
  //                                  static_cast<float>(240), 0.0f, -1.0f, 1.0f);
  while (aptMainLoop()) {
    // C2D_TextBufClear(tb);
    dt = delta.GetAsMs();
    delta.Reset();
    // ren.BeginDraw();
    C3D_FrameBegin(1);
    C2D_TargetClear(top, C2D_Color32(0, 0, 0, 255));
    C2D_SceneBegin(top);

    C3D_FrameEnd(0);
  }

  C2D_Fini();
  C3D_Fini();
  exit(EXIT_SUCCESS);
}
