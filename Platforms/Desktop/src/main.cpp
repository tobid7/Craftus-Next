#include <stdio.h>
#include <stdlib.h>
#include <thread>
// #define __DESKTOP__
#include <NImGui/NImGui.hpp>
#include <imgui_internal.h>

#include <Base.hpp>

#include <algorithm>
#include <filesystem>
#include <future>
#include <mutex>
#include <numeric>
#include <string>

#include <ini.hpp>

#include <json.hpp>

#include <Console.hpp>

#include <objects/Text.hpp>

#define LLC_ARRAYSIZE(_ARR) ((int)(sizeof(_ARR) / sizeof(*(_ARR))))

#include <cmath>
bool pos_chx = false;
bool pos_chy = false;
void MoveDvDLogo(bvec2f *pos, bvec2f screensize, bvec2f logosize,
                 bvec2f velocity) {
  if (pos_chx) {
    pos->x -= velocity.x;

  } else {
    pos->x += velocity.x;
  }
  if (pos_chy) {
    pos->y -= velocity.y;
  } else {
    pos->y += velocity.y;
  }

  if (pos->x <= 0 || pos->x + logosize.x >= screensize.x) {
    pos_chx = true;
  }

  if (pos->y <= 0 || pos->y + logosize.y >= screensize.y) {
    pos_chy = true;
  }

  if (pos->x <= 0) {
    pos_chx = false;
  }

  if (pos->y <= 0) {
    pos_chy = false;
  }
}

unsigned long hex2dec(std::string hex) {
  unsigned long result = 0;
  for (int i = 0; i < hex.length(); i++) {
    if (hex[i] >= 48 && hex[i] <= 57) {
      result += (hex[i] - 48) * pow(16, hex.length() - i - 1);
    } else if (hex[i] >= 65 && hex[i] <= 70) {
      result += (hex[i] - 55) * pow(16, hex.length() - i - 1);
    } else if (hex[i] >= 97 && hex[i] <= 102) {
      result += (hex[i] - 87) * pow(16, hex.length() - i - 1);
    }
  }
  return result;
}

int CalcPMT(int numattr) {
  int res;
  std::string hexstr = "0x";
  for (int i = numattr; i > -1; i--) {
    hexstr += std::to_string(i);
  }
  res = hex2dec(hexstr);

  return res;
}

ConsoleWindow stc;
std::unique_ptr<Base::StealConsole> stolenc;

std::string task_ = "";

std::string RemoveExtPath(std::string name) {
  return Base::string_hacks::remove_ext(Base::string_hacks::GetFileName(name));
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
  return false;
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
  return false;
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
int curreg = 0;
int main(void) {
  stolenc = std::make_unique<Base::StealConsole>();
  NImGui::App app("Craftus-Next", NImGui::Vec2i(1280, 720));
  app.SetWindowPos(NImGui::Vec2i(
      (app.GetMonitorSize().x / 2) - (app.GetWindowSize().x / 2),
      (app.GetMonitorSize().y / 2) - (app.GetWindowSize().y / 2)));
  app.SetIcon("res/icon.png");
  const ImU32 col = ImGui::GetColorU32(ImGuiCol_ButtonHovered);
  const ImU32 bg = ImGui::GetColorU32(ImGuiCol_Button);

  stc.AdditionalFlags(ImGuiWindowFlags_NoResize);
  std::cout << Base::GetName() << " " << Base::GetVersion() << " "
            << Base::GetPlatform() << std::endl;
  NImGui::Timer clk;
  // std::thread t1(task1, "Hello");
  ztm.Reset();
  // std::future<bool> ftt = std::async(task1, "NULL");
  // task = false;

  Base::Init();
  bool updt = false;

  app.SetClearColor(NImGui::Vec4f(0.05f, 0.05f, 0.05f, 1.0f));

  std::cout << CalcPMT(4 - 1) << std::endl;
  int renderw, renderh;
  renderw = app.GetWindowSize().x;
  renderh = app.GetWindowSize().y;
  BaseRenderer *renderer = new BaseRenderer();
  renderer->Init(renderw, renderh);
  Base::Sprite spr;
  Base::Sprite logo_spr;
  BaseTexture logo_tex;
  logo_tex.LoadFile("res/icon.png");
  logo_spr.SetTexture(logo_tex);
  BaseTexture text_;
  text_.LoadFile("res/loading.png");
  spr.SetTexture(text_);

  Base::Text textl;
  bvec2f lgopos = bvec2f(0, 0);

  while (app.IsRunning()) {
    // Update Size
    renderw = app.GetWindowSize().x;
    renderh = app.GetWindowSize().y;
    MoveDvDLogo(&lgopos, bvec2f(renderw, renderh),
                bvec2f(logo_spr.GetTexture()->GetSize()),
                bvec2f(deltatime * 0.2, deltatime * 0.2));
    logo_spr.SetPosition(lgopos);
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
    ImGui::Text(
        "Allocated: %s",
        Base::string_hacks::FormatBytes(Base::Memory::GetCurrent()).c_str());
    ImGui::InputInt("Image Reg", &curreg);
    ImGui::Image((ImTextureID)curreg, ImVec2(100, 100));
    ImGui::End();
    stc.Clear();
    stc.AddLog(stolenc->GetStdout().c_str());
    ImGui::SetNextWindowViewport(ImGui::GetMainViewport()->ID);
    stc.Draw("Console");

    renderer->AddObject(spr);
    renderer->AddObject(textl);
    renderer->AddObject(logo_spr);
    renderer->Render();
    app.SwapBuffers();
  }

  return 0;
}
