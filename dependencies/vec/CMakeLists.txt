cmake_minimum_required(VERSION 3.22)

project(vec)

add_library(vec vec.c)
target_include_directories(vec PUBLIC . ../)