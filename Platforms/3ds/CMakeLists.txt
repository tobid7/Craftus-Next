cmake_minimum_required(VERSION 3.22)

project(CraftusNext)

enable_language(ASM)

set(BASE_CTR ON CACHE BOOL "Enable 3ds")
add_subdirectory(../../base base)

add_executable(${PROJECT_NAME} src/main.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE src base)

target_link_libraries(${PROJECT_NAME} citro2d citro3d ctru m base)

ctr_create_3dsx(${PROJECT_NAME})