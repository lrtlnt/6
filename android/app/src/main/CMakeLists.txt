cmake_minimum_required(VERSION 3.22)
project("xpsim")

# SDL2
add_subdirectory(SDL)
add_subdirectory(SDL_image)
add_subdirectory(SDL_ttf)

file(GLOB SRC
     ${CMAKE_SOURCE_DIR}/../../../../../src/*.cpp
)

add_library(
        xpsim
        SHARED
        native-lib.cpp
        ${SRC})

find_library(
        log-lib
        log)

target_link_libraries(
        xpsim
        SDL2
        SDL2_image
        SDL2_ttf
        ${log-lib})
