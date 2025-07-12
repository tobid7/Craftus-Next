cmake_minimum_required(VERSION 3.22)

project(playback)

add_library(playback
    playback.c
    error.c
    file.c
    flac.c
    mp3.c
    opus.c
    vorbis.c
    wav.c
)
target_include_directories(playback PUBLIC . ../)
