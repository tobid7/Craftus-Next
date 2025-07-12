cmake_minimum_required(VERSION 3.22)

project(sino)

add_library(sino sino.c)
target_include_directories(sino PUBLIC . ../)