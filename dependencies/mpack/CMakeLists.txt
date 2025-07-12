cmake_minimum_required(VERSION 3.22)

project(mpack)

add_library(mpack mpack.c)
target_include_directories(mpack PUBLIC . ../)