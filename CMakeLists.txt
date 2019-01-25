cmake_minimum_required(VERSION 3.13)
project(cpp_learning_opengl)

set(CMAKE_CXX_STANDARD 17)

add_executable(cpp_learning_opengl src/main.cpp src/shader.cpp)

find_package(X11 REQUIRED)
find_package(GLEW REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)


include_directories(${X11_INCLUDE_DIR} ${GLEW_INCLUDE_DIRS} ${OPENGL_INCLUDE_DIR} )
target_link_libraries(cpp_learning_opengl ${X11_LIBRARIES} ${OPENGL_LIBRARIES} ${GLEW_LIBRARIES})
