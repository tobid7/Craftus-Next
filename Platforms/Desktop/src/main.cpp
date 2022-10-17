#include <stdlib.h>
#include <stdio.h>
#include <thread>
#define __DESKTOP__
#include <NImGui/NImGui.hpp>
#include <imgui_internal.h>

#include <Error.hpp>
#include <Base.hpp>

#include <filesystem>

namespace ImGui {
    
    bool BufferingBar(const char* label, float value,  const ImVec2& size_arg, const ImU32& bg_col, const ImU32& fg_col) {
        ImGuiWindow* window = GetCurrentWindow();
        if (window->SkipItems)
            return false;
        
        ImGuiContext& g = *GImGui;
        const ImGuiStyle& style = g.Style;
        const ImGuiID id = window->GetID(label);

        ImVec2 pos = window->DC.CursorPos;
        ImVec2 size = size_arg;
        size.x -= style.FramePadding.x * 2;
        
        const ImRect bb(pos, ImVec2(pos.x + size.x, pos.y + size.y));
        ItemSize(bb, style.FramePadding.y);
        if (!ItemAdd(bb, id))
            return false;
        
        // Render
        const float circleStart = size.x * 0.7f;
        const float circleEnd = size.x;
        const float circleWidth = circleEnd - circleStart;
        
        window->DrawList->AddRectFilled(bb.Min, ImVec2(pos.x + circleStart, bb.Max.y), bg_col);
        window->DrawList->AddRectFilled(bb.Min, ImVec2(pos.x + circleStart*value, bb.Max.y), fg_col);
        
        const float t = g.Time;
        const float r = size.y / 2;
        const float speed = 1.5f;
        
        const float a = speed*0;
        const float b = speed*0.333f;
        const float c = speed*0.666f;
        
        const float o1 = (circleWidth+r) * (t+a - speed * (int)((t+a) / speed)) / speed;
        const float o2 = (circleWidth+r) * (t+b - speed * (int)((t+b) / speed)) / speed;
        const float o3 = (circleWidth+r) * (t+c - speed * (int)((t+c) / speed)) / speed;
        
        window->DrawList->AddCircleFilled(ImVec2(pos.x + circleEnd - o1, bb.Min.y + r), r, bg_col);
        window->DrawList->AddCircleFilled(ImVec2(pos.x + circleEnd - o2, bb.Min.y + r), r, bg_col);
        window->DrawList->AddCircleFilled(ImVec2(pos.x + circleEnd - o3, bb.Min.y + r), r, bg_col);
    }

    bool Spinner(const char* label, float radius, int thickness, const ImU32& color) {
        ImGuiWindow* window = GetCurrentWindow();
        if (window->SkipItems)
            return false;
        
        ImGuiContext& g = *GImGui;
        const ImGuiStyle& style = g.Style;
        const ImGuiID id = window->GetID(label);
        
        ImVec2 pos = window->DC.CursorPos;
        ImVec2 size((radius )*2, (radius + style.FramePadding.y)*2);
        
        const ImRect bb(pos, ImVec2(pos.x + size.x, pos.y + size.y));
        ItemSize(bb, style.FramePadding.y);
        if (!ItemAdd(bb, id))
            return false;
        
        // Render
        window->DrawList->PathClear();
        
        int num_segments = 30;
        int start = abs(ImSin(g.Time*1.8f)*(num_segments-5));
        
        const float a_min = IM_PI*2.0f * ((float)start) / (float)num_segments;
        const float a_max = IM_PI*2.0f * ((float)num_segments-3) / (float)num_segments;

        const ImVec2 centre = ImVec2(pos.x+radius, pos.y+radius+style.FramePadding.y);
        
        for (int i = 0; i < num_segments; i++) {
            const float a = a_min + ((float)i / (float)num_segments) * (a_max - a_min);
            window->DrawList->PathLineTo(ImVec2(centre.x + ImCos(a+g.Time*8) * radius,
                                                centre.y + ImSin(a+g.Time*8) * radius));
        }

        window->DrawList->PathStroke(color, false, thickness);
    }
    
}

NImGui::Timer deltaclock;
NImGui::Timer frameclock;
int frames;
int fps = 0;
float deltatime = 0.f;

bool vsy = true;

std::string FrameRate()
{
    frames ++;
    if ((frameclock.GetAsMs()/1000) >= 1.f)
    {
        fps = frames;
        frames = 0;
        frameclock.Reset();
    }
    return std::to_string(fps);
}

bool initps = true;

bool task = true;

Base::BitmapPrinter pr(512, 512);

bool isev(int num)
{
    if ( num % 2 == 0)
    return true;
    else
    return false;

    return false;
}

int prc = 0;
int prj = 0;
void task1(std::string msg)
{
    
    Base::BitmapPrinter ll(256, 256);
    NImGui::Timer tm;
    
    pr.SetDecoder(Base::BITMAP2TEX);

    int fi = 0;
    int fi2 = 0;
    
    for(auto const& direntd : std::filesystem::directory_iterator{std::filesystem::path{"tex"}})
    {
        prc++;
    }
    pr.Clear();
    for(auto const& direntd : std::filesystem::directory_iterator{std::filesystem::path{"tex"}})
    {
        if(fi*16 > 512)
        {
            fi2++;
            fi = 0;
        }
        if(fi2*16 < 512)
        {
            auto g = direntd.path();
            ll.DecodePNGFile(g.generic_string());
            if(!(ll.GetBitmap().bmp_info_header.width > 16) && !(ll.GetBitmap().bmp_info_header.height > 16))
            {
                pr.DrawBitmap(fi*16, fi2*16, ll.GetBitmap());
                fi++;
            }
        }
        
        prj++;
    }
    pr.SavePng("blocks.png");
    pr.Clear();
    fi = 0;
    fi2 = 0;

    for(auto const& direntd : std::filesystem::directory_iterator{std::filesystem::path{"items"}})
    {
        if(fi*16 > 512)
        {
            fi2++;
            fi = 0;
        }
        if(fi2*16 < 512)
        {
            auto g = direntd.path();
            ll.DecodePNGFile(g.generic_string());
            if(!(ll.GetBitmap().bmp_info_header.width > 16) && !(ll.GetBitmap().bmp_info_header.height > 16))
            {
                pr.DrawBitmap(fi*16, fi2*16, ll.GetBitmap());
                fi++;
            }
        }
        
        prj++;
    }
    
    std::cout << "Createt Bitmap in " << tm.GetAsMs()/1000 << "s" << std::endl;
    tm.Reset();
    pr.SavePng("items.png");
    std::cout << "Saved Bitmap in " << tm.GetAsMs()/1000 << "s" << std::endl;
    tm.Reset();
    pr.UpdateScreen();
    std::cout << "Updated Bitmap in " << tm.GetAsMs()/1000 << "s" << std::endl;
    tm.Reset();
    
    task = false;
}

int main(void)
{   
    NImGui::App app("Craftus-Next", NImGui::Vec2i(900, 400), NImGui::BORDERLESS | NImGui::TRANSPARENT);
    app.SetWindowPos(NImGui::Vec2i((app.GetMonitorSize().x/2)-(app.GetWindowSize().x/2), (app.GetMonitorSize().y/2)-(app.GetWindowSize().y/2)));
    app.LoadIcon("icon.png");
    const ImU32 col = ImGui::GetColorU32(ImGuiCol_ButtonHovered);
    const ImU32 bg = ImGui::GetColorU32(ImGuiCol_Button);

    ErrorCode code;
    NImGui::Image testt;
    testt.LoadImage("loading.png");
    std::cout << Base::GetVersion() << " " << Base::GetName() << " " << Base::GetPlatform() << std::endl;
    NImGui::Timer clk;
    std::thread t1(task1, "Hello");
    while(app.IsRunning())
    {
        ImGui::Begin("Test", NULL, ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoInputs);
        ImGui::SetWindowPos(ImVec2(app.GetWindowPos().x, app.GetWindowPos().y));
        ImGui::SetWindowSize(ImVec2(app.GetWindowSize().x, app.GetWindowSize().y));
        ImGui::Image(testt.GetTextureID(), testt.GetSize());
        
        ImGui::SetCursorPos(ImVec2(37, 375));
        ImGui::Spinner("T", 5, 2, col);
        ImGui::SameLine();
        ImGui::Text("Loading -> %s", "Craftus-Next");
        //ImGui::Text("Loading %c -> %s", "|/-\\"[(int)(ImGui::GetTime() / 0.05f) & 3], "Craftus-Next");
        
        //ImGui::BufferingBar("T", ((clk.GetAsMs()/1000)/7), ImVec2(400, 6), bg, col);
        //ImGui::ProgressBar((prj/prc), ImVec2(600, 2));
        
        ImGui::End();
        app.SwapBuffers();
        if(!task)
        {
            initps = false;
            t1.join();
            break;
        }
    }
    
    app.SetWindowSize(NImGui::Vec2i(1280, 720));
    bool updt = false;
    app.SetFullScreen(true);
    while(app.IsRunning())
    {
        if(!updt)
        {
            app.SetWindowPos(NImGui::Vec2i((app.GetMonitorSize().x/2)-(app.GetWindowSize().x/2), (app.GetMonitorSize().y/2)-(app.GetWindowSize().y/2)));
            updt = true;    
        }
        app.SetVsync(vsy);
        deltatime = deltaclock.GetAsMs();
        deltaclock.Reset();
        ImGui::SetNextWindowViewport(ImGui::GetMainViewport()->ID);
        ImGui::Begin("Fps", NULL, ImGuiWindowFlags_NoDocking);
        if(ImGui::Button("Close")) break;
        ImGui::Text("Fps -> %s", FrameRate().c_str());
        ImGui::Text("Delta -> %sms", std::to_string(deltatime).c_str());
        ImGui::Checkbox("Vsync", &vsy);
        ImGui::Text("MouseLeft -> %d", (int)app.IsMouseButtonDown(NImGui::MouseButton::Left));
        ImGui::Text("Key W -> %d", (int)app.IsKeyDown(NImGui::KeyCode::W));
        
        ImGui::End();

        app.SwapBuffers();
    }

    exit(EXIT_SUCCESS);
}
