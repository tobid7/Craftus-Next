/*
 *  ____ _____                  ____
 * |  _ \___  |_   ____  __    |  _ \  _____   __
 * | | | | / /\ \ / /\ \/ /____| | | |/ _ \ \ / /
 * | |_| |/ /  \ V /  >  <_____| |_| |  __/\ V /
 * |____//_/    \_/  /_/\_\    |____/ \___| \_/
 *
 * Copyright (C) 2020-2023 D7vx-Dev
 */
#pragma once

#include <algorithm>
#include <cstdarg>
#include <fstream>
#include <iomanip>
#include <memory>
#include <sstream>
#include <string>
#include <vector>

#include <D7Api/str_helper.hpp>

namespace D7 {
struct FileInfo {
  std::string name;
  int index;

  std::vector<uint8_t> file_buffer;
};

inline void ExportFileInfoHeader(const std::vector<FileInfo> &file_infos,
                                 std::string name) {
  std::ofstream ofs(D7::str_helper::ToLowerCase(name) + ".hpp");
  ofs << "/*\n*  ____ _____                  ____              \n"
         "* |  _ \\___  |_   ____  __    |  _ \\  _____   __ \n"
         "* | | | | / /\\ \\ / /\\ \\/ /____| | | |/ _ \\ \\ / / \n"
         "* | |_| |/ /  \\ V /  >  <_____| |_| |  __/\\ V /  \n"
         "* |____//_/    \\_/  /_/\\_\\    |____/ \\___| \\_/  \n"
         "*\n* DO NOT EDIT ANYTHING HERE!\n*/\n";
  ofs << "#pragma once\n\n";
  ofs << "#include <D7Api/D7FS.hpp>\n\n";

  // Write F_ defines for each file
  for (const auto &file_info : file_infos) {
    ofs << "#define F_"
        << D7::str_helper::remove_ext(
               D7::str_helper::GetFileName(file_info.name))
        << " " << file_info.index << "\n";
  }

  ofs << "\n";

  // Write FileInfo objects
  ofs << "const std::vector<D7::FileInfo> " << D7::str_helper::ToLowerCase(name)
      << " = {\n";
  for (const auto &file_info : file_infos) {
    ofs << "  { \"" << file_info.name << "\", " << file_info.index << ", { ";

    // Write binary data as comma-separated hex values
    for (const auto &byte : file_info.file_buffer) {
      ofs << "0x" << std::setfill('0') << std::setw(2) << std::hex
          << static_cast<int>(byte) << ", ";
    }

    ofs << "} },\n";
  }
  ofs << "};\n";

  ofs.close();
}

inline void GenerateBin(std::vector<std::string> t_paths, std::string name) {
  std::vector<FileInfo> file_infos;

  // Load file buffers and create FileInfo objects
  for (int i = 0; i < (int)t_paths.size(); i++) {
    std::string path = t_paths[i];
    std::ifstream file(path, std::ios::binary);

    if (file) {
      // Get file size
      file.seekg(0, std::ios::end);
      size_t file_size = file.tellg();
      file.seekg(0, std::ios::beg);

      // Allocate buffer
      std::vector<uint8_t> buffer(file_size);
      file.read(reinterpret_cast<char *>(buffer.data()), file_size);

      // Create FileInfo object
      FileInfo file_info;
      file_info.name = str_helper::remove_ext(str_helper::GetFileName(path));
      file_info.index = i;
      file_info.file_buffer = buffer;
      file_infos.push_back(file_info);
    }
  }

  /*// Write binary file
  std::ofstream bin_file("output.bin", std::ios::binary);
  for (auto& file_info : file_infos) {
      bin_file.write(reinterpret_cast<char*>(file_info.file_buffer.data()),
  file_info.file_buffer.size());
  }*/

  ExportFileInfoHeader(file_infos, name);
}

inline std::vector<uint8_t> GetFileBuffer(std::vector<FileInfo> file_infos_,
                                          int index) {
  std::vector<uint8_t> tmp_res;
  for (const auto &it : file_infos_) {
    if (it.index == index)
      return it.file_buffer;
  }
  return tmp_res;
}
} // namespace D7
