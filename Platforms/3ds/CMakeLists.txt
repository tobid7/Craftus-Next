cmake_minimum_required(VERSION 3.22)

project(CraftusNext)

set(SMDH_TITLE "Craftus-Next")
set(SMDH_DESCRIPTION "Minecraft Clone for 3ds")
set(SMDH_AUTHOR "tobid7vx")

enable_language(ASM)

set(BASE_CTR ON CACHE BOOL "Enable 3ds")
add_subdirectory(../../base base)

add_executable(${PROJECT_NAME} src/main.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE src base)

target_link_libraries(${PROJECT_NAME} citro2d citro3d ctru m base)

ctr_generate_smdh("Craftus-Next" "Minecraft Clone for 3ds!" "tobid7vx")
ctr_create_3dsx(${PROJECT_NAME})