cmake_minimum_required(VERSION 3.22)

project(miniz)

add_library(miniz miniz.c)
target_include_directories(miniz PUBLIC . ../)