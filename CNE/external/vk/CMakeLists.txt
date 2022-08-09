add_library(
        vulkan
        vulkan.c
        vulkan.h
        vk_platform.h
)

target_include_directories(vulkan PUBLIC .)