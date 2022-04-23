cmake_minimum_required(VERSION 3.20)
project(nif)

set(CMAKE_C_STANDARD 11)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

find_package(Erlang REQUIRED)

add_library(foo SHARED foo.c)
target_link_libraries(foo Erlang::Headers)
set_target_properties(foo PROPERTIES SUFFIX .so)
target_link_options(foo PUBLIC -undefined dynamic_lookup -dynamiclibrary)
