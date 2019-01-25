cmake_minimum_required(VERSION 3.13)
project(cpp_learning_opengl)

set(CMAKE_CXX_STANDARD 17)

add_executable(cpp_learning_opengl src/main.cpp)

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)
find_package(X11 REQUIRED)
include_directories(${X11_INCLUDE_DIR} ${OPENGL_INCLUDE_DIR})
target_link_libraries(cpp_learning_opengl ${X11_LIBRARIES} ${OPENGL_LIBRARIES})
