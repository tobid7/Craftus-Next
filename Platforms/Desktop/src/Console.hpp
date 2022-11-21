#include <imgui.h>

class ConsoleWindow {
private:
  ImGuiTextBuffer Buf;
  ImGuiTextFilter Filter;
  ImVector<int> LineOffsets; // Index to lines offset
  bool ScrollToBottom;
  ImGuiWindowFlags extraflags = 0;

public:
  inline void Clear() {
    Buf.clear();
    LineOffsets.clear();
  }

  inline void AdditionalFlags(ImGuiWindowFlags flg) { extraflags = flg; }

  inline void AddLog(const char *fmt, ...) {
    int old_size = Buf.size();
    va_list args;
    va_start(args, fmt);
    Buf.appendfv(fmt, args);
    va_end(args);
    for (int new_size = Buf.size(); old_size < new_size; old_size++)
      if (Buf[old_size] == '\n')
        LineOffsets.push_back(old_size);
    ScrollToBottom = true;
  }

  inline void Draw(const char *title) {
    ImGui::SetNextWindowSize(ImVec2(700, 400));
    ImGui::Begin(title, NULL,
                 ImGuiWindowFlags_HorizontalScrollbar |
                     ImGuiWindowFlags_NoCollapse | extraflags);
    if (ImGui::Button("Clear"))
      Clear();
    ImGui::SameLine();
    bool copy = ImGui::Button("Copy");
    ImGui::SameLine();
    Filter.Draw("Filter", -100.0f);
    ImGui::Separator();
    ImGui::BeginChild("scrolling", ImVec2(NULL, NULL), false,
                      ImGuiWindowFlags_HorizontalScrollbar);
    ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, 1));
    if (copy)
      ImGui::LogToClipboard();

    if (Filter.IsActive()) {
      const char *buf_begin = Buf.begin();
      const char *line = buf_begin;
      for (int line_no = 0; line != NULL; line_no++) {
        const char *line_end = (line_no < LineOffsets.Size)
                                   ? buf_begin + LineOffsets[line_no]
                                   : NULL;
        if (Filter.PassFilter(line, line_end))
          ImGui::TextUnformatted(line, line_end);
        line = line_end && line_end[1] ? line_end + 1 : NULL;
      }
    } else {
      ImGui::TextUnformatted(Buf.begin());
    }

    if (ScrollToBottom)
      ImGui::SetScrollHereY(1.0f);

    ScrollToBottom = false;
    ImGui::PopStyleVar();
    ImGui::EndChild();
    ImGui::End();
  }
};