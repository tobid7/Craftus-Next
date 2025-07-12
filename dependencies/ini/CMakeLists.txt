cmake_minimum_required(VERSION 3.22)

project(ini)

add_library(ini ini.c)
target_include_directories(ini PUBLIC . ../)