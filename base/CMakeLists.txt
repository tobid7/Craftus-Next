#Specify Version
cmake_minimum_required(VERSION 3.22)

#Set Project Name
project(base)

set(BASE_CFLAGS "")

set(BASE_SOURCE
)

set(BASE_EXTRAINCLUDES "")
set(BASE_EXTRADEPS "")

#Add external glfw library
add_library(${PROJECT_NAME} INTERFACE ${BASE_SOURCE})

target_include_directories(${PROJECT_NAME} INTERFACE . misc rendering ${BASE_EXTRAINCLUDES})

target_link_libraries(${PROJECT_NAME} ${BASE_EXTRADEPS})

target_compile_options(${PROJECT_NAME} PUBLIC ${BASE_CFLAGS})