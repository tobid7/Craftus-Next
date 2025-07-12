cmake_minimum_required(VERSION 3.22)

project(lodepng)

add_library(lodepng lodepng.c)
target_include_directories(lodepng PUBLIC . ../)