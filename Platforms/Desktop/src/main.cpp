#include <stdio.h>
#include <stdlib.h>
#include <thread>

// #define __DESKTOP__
#include <NImGui/NImGui.hpp>
#include <imgui_internal.h>

#include <Base.hpp>
#include <Error.hpp>

#include <algorithm>
#include <filesystem>
#include <future>
#include <mutex>
#include <numeric>
#include <string>

#include <ini.hpp>

#include <json.hpp>

#include <Console.hpp>
#include <currentshaders.hpp>

#define LLC_ARRAYSIZE(_ARR) ((int)(sizeof(_ARR) / sizeof(*(_ARR))))

unsigned long hex2dec(std::string hex)
{
    unsigned long result = 0;
    for (int i=0; i<hex.length(); i++) {
        if (hex[i]>=48 && hex[i]<=57)
        {
            result += (hex[i]-48)*pow(16,hex.length()-i-1);
        } else if (hex[i]>=65 && hex[i]<=70) {
            result += (hex[i]-55)*pow(16,hex.length( )-i-1);
        } else if (hex[i]>=97 && hex[i]<=102) {
            result += (hex[i]-87)*pow(16,hex.length()-i-1);
        }
    }
    return result;
}

int CalcPMT(int numattr)
{
  int res;
  std::string hexstr = "0x";
  for (int i = numattr; i > -1; i--)
  {
    hexstr += std::to_string(i);
  }
  res = hex2dec(hexstr);
  
  return res;
}

ConsoleWindow stc;
std::unique_ptr<Base::StealConsole> stolenc;

std::string task_ = "";

std::string RemoveExtPath(std::string name) {
  return remove_ext(GetFileName(name));
}

namespace ImGui {

bool BufferingBar(const char *label, float value, const ImVec2 &size_arg,
                  const ImU32 &bg_col, const ImU32 &fg_col) {
  ImGuiWindow *window = GetCurrentWindow();
  if (window->SkipItems)
    return false;

  ImGuiContext &g = *GImGui;
  const ImGuiStyle &style = g.Style;
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

  window->DrawList->AddRectFilled(bb.Min, ImVec2(pos.x + circleStart, bb.Max.y),
                                  bg_col);
  window->DrawList->AddRectFilled(
      bb.Min, ImVec2(pos.x + circleStart * value, bb.Max.y), fg_col);

  const float t = g.Time;
  const float r = size.y / 2;
  const float speed = 1.5f;

  const float a = speed * 0;
  const float b = speed * 0.333f;
  const float c = speed * 0.666f;

  const float o1 =
      (circleWidth + r) * (t + a - speed * (int)((t + a) / speed)) / speed;
  const float o2 =
      (circleWidth + r) * (t + b - speed * (int)((t + b) / speed)) / speed;
  const float o3 =
      (circleWidth + r) * (t + c - speed * (int)((t + c) / speed)) / speed;

  window->DrawList->AddCircleFilled(
      ImVec2(pos.x + circleEnd - o1, bb.Min.y + r), r, bg_col);
  window->DrawList->AddCircleFilled(
      ImVec2(pos.x + circleEnd - o2, bb.Min.y + r), r, bg_col);
  window->DrawList->AddCircleFilled(
      ImVec2(pos.x + circleEnd - o3, bb.Min.y + r), r, bg_col);
}

bool Spinner(const char *label, float radius, int thickness,
             const ImU32 &color) {
  ImGuiWindow *window = GetCurrentWindow();
  if (window->SkipItems)
    return false;

  ImGuiContext &g = *GImGui;
  const ImGuiStyle &style = g.Style;
  const ImGuiID id = window->GetID(label);

  ImVec2 pos = window->DC.CursorPos;
  ImVec2 size((radius)*2, (radius + style.FramePadding.y) * 2);

  const ImRect bb(pos, ImVec2(pos.x + size.x, pos.y + size.y));
  ItemSize(bb, style.FramePadding.y);
  if (!ItemAdd(bb, id))
    return false;

  // Render
  window->DrawList->PathClear();

  int num_segments = 30;
  int start = abs(ImSin(g.Time * 1.8f) * (num_segments - 5));

  const float a_min = IM_PI * 2.0f * ((float)start) / (float)num_segments;
  const float a_max =
      IM_PI * 2.0f * ((float)num_segments - 3) / (float)num_segments;

  const ImVec2 centre =
      ImVec2(pos.x + radius, pos.y + radius + style.FramePadding.y);

  for (int i = 0; i < num_segments; i++) {
    const float a = a_min + ((float)i / (float)num_segments) * (a_max - a_min);
    window->DrawList->PathLineTo(
        ImVec2(centre.x + ImCos(a + g.Time * 8) * radius,
               centre.y + ImSin(a + g.Time * 8) * radius));
  }

  window->DrawList->PathStroke(color, false, thickness);
}

} // namespace ImGui

NImGui::Timer deltaclock;
NImGui::Timer frameclock;
int frames;
int fps = 0;
float deltatime = 0.f;

bool vsy = true;

std::string FrameRate() {
  frames++;
  if ((frameclock.GetAsMs() / 1000) >= 1.f) {
    fps = frames;
    frames = 0;
    frameclock.Reset();
  }
  return std::to_string(fps);
}

bool initps = true;

bool task = true;

bool isev(int num) {
  if (num % 2 == 0)
    return true;
  else
    return false;

  return false;
}

unsigned hash_str(const char *s) {
  unsigned h = 37;
  while (*s) {
    h = (h * 54059) ^ (s[0] * 76963);
    s++;
  }
  return h % 86969; // or return h % C;
}

Base::Timer ztm;

bool task1(std::string msg) {
  task_ = "Init Loader!";

  while (ztm.GetAsMs() >= 50000000) {
    task_ = "Init: " + std::to_string(ztm.GetAsMs()) + "/" +
            std::to_string(50000 * 1000);
  }
  task = false;
  return true;
}

bool prevcrash = false;

int main(void) {
  stolenc = std::make_unique<Base::StealConsole>();
  NImGui::App app("Craftus-Next", NImGui::Vec2i(900, 400),
                  NImGui::BORDERLESS | NImGui::TRANSPARENT);
  app.SetWindowPos(NImGui::Vec2i(
      (app.GetMonitorSize().x / 2) - (app.GetWindowSize().x / 2),
      (app.GetMonitorSize().y / 2) - (app.GetWindowSize().y / 2)));
  app.LoadIcon("res/icon.png");
  const ImU32 col = ImGui::GetColorU32(ImGuiCol_ButtonHovered);
  const ImU32 bg = ImGui::GetColorU32(ImGuiCol_Button);

  stc.AdditionalFlags(ImGuiWindowFlags_NoResize);

  ErrorCode code;
  NImGui::Image testt;
  testt.LoadImage("res/loading.png");
  std::cout << Base::GetVersion() << " " << Base::GetName() << " "
            << Base::GetPlatform() << std::endl;
  NImGui::Timer clk;
  // std::thread t1(task1, "Hello");
  ztm.Reset();
  // std::future<bool> ftt = std::async(task1, "NULL");
  // task = false;
  while (app.IsRunning()) {
    task_ = std::to_string(ztm.GetAsMs()) + "/" + std::to_string(5000);
    ImGui::Begin("Test", NULL,
                 ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoBackground |
                     ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoInputs);
    prevcrash = true;
    ImGui::SetWindowPos(ImVec2(app.GetWindowPos().x, app.GetWindowPos().y));
    ImGui::SetWindowSize(ImVec2(app.GetWindowSize().x, app.GetWindowSize().y));
    ImGui::SetCursorPos(ImVec2(0, 0));
    ImGui::Image(testt.GetTextureID(), testt.GetSize());
    ImGui::SetCursorPos(ImVec2(37, 200));
    ImGui::Text("Console:\n%s", stolenc->GetStdout().c_str());
    ImGui::SetCursorPos(ImVec2(37, 375));
    ImGui::Spinner("T", 5, 2, col);
    ImGui::SameLine();
    ImGui::Text("Loading -> %s", task_.c_str());
    // ImGui::Text("Loading %c -> %s", "|/-\\"[(int)(ImGui::GetTime() / 0.05f) &
    // 3], "Craftus-Next");

    // ImGui::BufferingBar("T", (prj/prc), ImVec2(600, 6), bg, col);
    // ImGui::ProgressBar((prj/prc), ImVec2(600, 2));

    ImGui::End();
    prevcrash = false;
    app.SwapBuffers();
    if (!task || ztm.GetAsMs() > 5000) {
      initps = false;

      // t1.join();
      break;
    }
  }
  Base::Init();
  app.SetWindowSize(NImGui::Vec2i(1280, 720));
  bool updt = false;
  app.SetFullScreen(true);
  app.SetClearColor(NImGui::Vec4f(0.05f, 0.05f, 0.05f, 1.0f));
  Base::Gui::Init(app.GetMonitorSize().x, app.GetMonitorSize().y);
  Base::WorldVertex vtx[] = {
      {{-0.5f, -0.5f, 0.0f}, {0, 0}, {0, 0, 1}},
      {{0.5f, -0.5f, 0.0f}, {0, 0}, {0, 1, 0}},
      {{0.0f, 0.5f, 0.0f}, {0, 0}, {1, 0, 0}},
  };
  Base::Shader *trishader = nullptr;
  trishader->LD7();
  trishader->Compile(vertTri, fragTri);
  trishader->use();

  Base::VertexArray *vao_ = 0;
  vao_->LD7();
  vao_->Create(&vtx, LLC_ARRAYSIZE(vtx), sizeof(Base::WorldVertex));
  vao_->AddAttrInfo(0, 3, 0, false, sizeof(Base::WorldVertex),
                   (void *)offsetof(Base::WorldVertex, position));
  vao_->AddAttrInfo(1, 2, 0, false, sizeof(Base::WorldVertex),
                   (void *)offsetof(Base::WorldVertex, texcoords));
  vao_->AddAttrInfo(2, 3, 0, false, sizeof(Base::WorldVertex),
                   (void *)offsetof(Base::WorldVertex, color));
  vao_->UnBind();
  Base::Renderer *llc_renderer = 0;
  llc_renderer->LD7();
  llc_renderer->Init(app.GetMonitorSize().x, app.GetMonitorSize().y);
  color_t llc_quad((uint8_t)255, 255, 255, 255);
  std::cout << CalcPMT(4-1) << std::endl;
  while (app.IsRunning()) {
    llc_renderer->BeginDraw();
    if (prevcrash) {
      ImGui::End();
      prevcrash = false;
    }

    if (!updt) {
      app.SetWindowPos(NImGui::Vec2i(
          (app.GetMonitorSize().x / 2) - (app.GetWindowSize().x / 2),
          (app.GetMonitorSize().y / 2) - (app.GetWindowSize().y / 2)));
      updt = true;
    }
    // pr.UpdateScreen();
    app.SetVsync(vsy);
    deltatime = deltaclock.GetAsMs();
    deltaclock.Reset();
    ImGui::SetNextWindowViewport(ImGui::GetMainViewport()->ID);
    ImGui::Begin("Settings", NULL, ImGuiWindowFlags_NoDocking);
    if (ImGui::Button("Close"))
      break;
    ImGui::Text("Fps -> %s", FrameRate().c_str());
    ImGui::Text("Delta -> %sms", std::to_string(deltatime).c_str());
    ImGui::Checkbox("Vsync", &vsy);
    ImGui::Text("MouseLeft -> %d",
                (int)app.IsMouseButtonDown(NImGui::MouseButton::Left));
    ImGui::Text("Key W -> %d", (int)app.IsKeyDown(NImGui::KeyCode::W));
    ImGui::End();
    stc.Clear();
    stc.AddLog(stolenc->GetStdout().c_str());
    ImGui::SetNextWindowViewport(ImGui::GetMainViewport()->ID);
    stc.Draw("Console");
    trishader->use();
    vao_->Bind();
    llc_renderer->DrawArrays(LLC_ARRAYSIZE(vtx));
    Base::Gui::DrawQuad(0, 0, 50, 50, llc_quad);
    app.SwapBuffers();
  }

  return 0;
}
