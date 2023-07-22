cmake_minimum_required(VERSION 3.0)
project(ray-tracing-engine)

set(CMAKE_CXX_STANDARD 17)
FILE(GLOB MyCPPSources *.cpp)

add_executable(ray-tracing-engine ${MyCPPSources})

