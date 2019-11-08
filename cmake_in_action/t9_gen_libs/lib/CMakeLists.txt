cmake_minimum_required(VERSION 3.1)
SET(LIBHELLO_SRC hello.c)

# create libhello.a
add_library(hello STATIC ${LIBHELLO_SRC})

# install it
SET(CMAKE_INSTALL_PREFIX /Users/chenhui13/github/compilers/cmake_in_action/install_lib)
install(TARGETS hello DESTINATION lib)
install(FILES hello.h DESTINATION include)
