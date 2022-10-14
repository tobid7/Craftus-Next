cmake_minimum_required(VERSION 3.22)

project(CraftusNext)

enable_language(ASM)

add_executable(${PROJECT_NAME} src/main.cpp)

#target_include_directories(${PROJECT_NAME} PRIVATE ${CTRUL})

target_link_libraries(${PROJECT_NAME} ctru m)

ctr_create_3dsx(${PROJECT_NAME})