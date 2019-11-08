cmake_minimum_required(VERSION 3.1)

project(demo9)

# create libdemo9_lib.a
set(SRC_LIB demo9.cpp)
add_library(demo9_lib STATIC ${SRC_LIB})

# install it
SET(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/install)
install(TARGETS demo9_lib DESTINATION demo9/lib)
install(FILES demo9.h DESTINATION demo9/include)

# create demo9_main exectuable
set(SRC_EXE demo9_main.cpp)

# set demo9_lib cmake module path
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
message("cmake_module_path: ${CMAKE_MODULE_PATH}")
find_package(DEMO9LIB)

if(DEMO9LIB_FOUND)
    add_executable(demo9_main ${SRC_EXE})
    message("found demo9 ${DEMO9LIB_INCLUDE_DIR} ${DEMO9LIB_LIBRARY}")
    include_directories(${DEMO9LIB_INCLUDE_DIR})
    target_link_libraries(demo9_main ${DEMO9LIB_LIBRARY})
else()
    message("not found DEMO9LIB_FOUND")
endif(DEMO9LIB_FOUND)
