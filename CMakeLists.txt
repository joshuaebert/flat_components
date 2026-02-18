cmake_minimum_required(VERSION 4.0)
project(flat_components VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick Core QuickControls2)

add_subdirectory(src)