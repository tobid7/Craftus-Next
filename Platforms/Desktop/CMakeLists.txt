cmake_minimum_required(VERSION 3.22)

project(CraftusNext)

add_subdirectory(../../external/NImGui NImGui)

add_executable(${PROJECT_NAME} src/main.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE NImGui)

target_link_libraries(${PROJECT_NAME} NImGui)