add_library(
        glad
        glad.c
        glad.h
        khrplatform.h
)

target_include_directories(glad PUBLIC .)