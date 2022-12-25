#include <stdlib.h>
#include <stdio.h>

#include <3ds.h>
#include <citro3d.h>
#include <citro2d.h>

#include <Base.hpp>

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
 
//NImGui::Timer deltaclock;
Base::Timer frameclock;
int frames;
int fps = 0;
//float deltatime = 0.f;
//
std::string FrameRate()
{
    frames ++;
    if ((frameclock.Get()/1000) >= 1.f)
    {
        fps = frames;
        frames = 0;
        frameclock.Reset();
    }
    return std::to_string(fps);
}

typedef struct { float position[3]; float color[3]; } vertex;

static const vertex vertex_list[] =
{
	{{ 200.0f, 200.0f, 0.5f }, {1, 0, 0}},
	{{ 100.0f, 40.0f, 0.5f }, {0, 1, 0}},
	{{ 300.0f, 40.0f, 0.5f }, {0, 0, 1}},
};

//C2D_TextBuf tb;
C3D_RenderTarget *top;
int main(void)
{
    aptInit();
    gfxInitDefault();
    consoleInit(GFX_BOTTOM, NULL);
    romfsInit();
    printf("test\n");
    std::cout << Base::GetPlatform() << std::endl;
    Base::Timer tm;
    
    C3D_Init(C3D_DEFAULT_CMDBUF_SIZE);
    C2D_Init(C2D_DEFAULT_MAX_OBJECTS);
    C2D_Prepare();
    //C2D_TextBufNew(900);
    //C2D_TextBufClear(tb);
    //C2D_FontLoadSystem(CFG_REGION_EUR);
    top = C2D_CreateScreenTarget(GFX_TOP, GFX_LEFT);
    double ed = tm.GetAsMs();
    Base::Texture *tex;
    tex->LD7();
    tex->Load("romfs:/loading.png");
    //NImGui::App app("Craftus-Next", NImGui::Vec2i(1280, 720));
    Base::Timer delta;
    double dt = 0;
    Base::Renderer *ren;
    ren->LD7();
    ren->Init(400, 240);
    Base::Shader* tshader;
    tshader->LD7();
    tshader->Compile(vertShader, NULL);
    tshader->use();
    Base::UiSquare vtxlst[]
    {
        {{0, 1}, {1, 0, 0}},
        {{1, 1}, {0, 1, 0}},
        {{0, 0}, {0, 0, 1}},
    };

    while(aptMainLoop())
    {
        //C2D_TextBufClear(tb);
        dt = delta.GetAsMs();
        delta.Reset();
        //ren.BeginDraw();
        C3D_FrameBegin(1);
        C2D_TargetClear(top, C2D_Color32(0, 0, 0, 255));
        C2D_SceneBegin(top);

        //C2D_DrawRectSolid(0, 0, 0.5f, 400, 240, C2D_Color32(255, 255, 255, 255));
        //C2D_DrawImageAt(tex->GetCtrReg(), -1, -1, 0.5f);
        //C2D_DrawImageAt(pr.GetImage().GetCtrReg(), 0, 0, 0.5f);

        //deltatime = deltaclock.GetAsMs();
        //deltaclock.Reset();
        C3D_FrameEnd(0);
    }

    C2D_Fini();
	C3D_Fini();
    exit(EXIT_SUCCESS);
}
 