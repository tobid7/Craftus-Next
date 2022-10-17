#Specify Version
cmake_minimum_required(VERSION 3.22)

#Set Project Name
project(base)

#Options
option(BASE_DESKTOP "Desktop Platform" ON)
option(BASE_CTR "Ctr Platform" OFF)

set(BASE_VER "0.2.0")
set(BASE_NM "Base-Engine")

set(BASE_CFLAGS "")

list(APPEND BASE_CFLAGS -DBASE_VERSION=\"${BASE_VER}\" -DBASE_NAME=\"${BASE_NM}\")

set(BASE_SOURCE Base.cpp
basegame/bitmapengine/BitmapEngine.cpp
basegame/bitmapengine/bmpconverter.cpp
external/lodepng.cpp)

set(BASE_EXTRAINCLUDES "")
set(BASE_EXTRADEPS "")

if(BASE_DESKTOP)
    add_subdirectory(../external/glm glm)
    list(APPEND BASE_SOURCE
    #${BASE_SOURCE}
    #OpenGL Support(3.3+)
    external/glad/glad.c
    rendering/gl/GL_Renderer.cpp
    rendering/gl/GL_Texture.cpp)
    list(APPEND BASE_EXTRAINCLUDES
    #${BASE_EXTRAINCLUDES}
    external/glad
    glm)
    list(APPEND BASE_EXTRADEPS
    #${BASE_EXTRADEPS}
    glm)
    cmake_host_system_information(RESULT DK_NAME QUERY OS_NAME)
    set(BASE_PL "Desktop -> ${DK_NAME}")
    list(APPEND BASE_CFLAGS -DBASE_PLATFORM=\"${BASE_PL}\")
    list(APPEND BASE_CFLAGS -D__BASE_DESKTOP__)
endif()


#Add external glfw library
add_library(${PROJECT_NAME} STATIC ${BASE_SOURCE})

target_include_directories(${PROJECT_NAME} PUBLIC . basegame basegame/bitmapengine misc rendering ${BASE_EXTRAINCLUDES})

target_link_libraries(${PROJECT_NAME} ${BASE_EXTRADEPS})

target_compile_options(${PROJECT_NAME} PUBLIC ${BASE_CFLAGS})
