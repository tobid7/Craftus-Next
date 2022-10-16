#Specify Version
cmake_minimum_required(VERSION 3.22)

#Set Project Name
project(base)

#Options
option(BASE_DESKTOP "Desktop Platform" ON)
option(BASE_CTR "Desktop Platform" OFF)

set(BASE_CFLAGS "")

set(BASE_SOURCE
Base.cpp)

set(BASE_EXTRAINCLUDES "")
set(BASE_EXTRADEPS "")

if(BASE_DESKTOP)
    set(BASE_SOURCE
    ${BASE_SOURCE}
    #OpenGL Support(3.3+)
    external/glad/glad.c)
    set(BASE_EXTRAINCLUDES
    ${BASE_EXTRAINCLUDES}
    external/glad)
    set(BASE_EXTRADEPS
    ${BASE_EXTRADEPS})
    list(APPEND BASE_CFLAGS -D__BASE_DESKTOP__)
endif()

add_subdirectory(../external/glm glm)

#Add external glfw library
add_library(${PROJECT_NAME} STATIC ${BASE_SOURCE})

target_include_directories(${PROJECT_NAME} PUBLIC . misc rendering glm external/glad${BASE_EXTRAINCLUDES})

target_link_libraries(${PROJECT_NAME} ${BASE_EXTRADEPS} glm)

target_compile_options(${PROJECT_NAME} PUBLIC ${BASE_CFLAGS})
