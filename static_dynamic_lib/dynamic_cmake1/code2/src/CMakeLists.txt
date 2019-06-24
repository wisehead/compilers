ADD_EXECUTABLE(main main.cc)
INCLUDE_DIRECTORIES(/Users/chenhui13/github/compilers/static_dynamic_lib/dynamic_cmake1/usr/include/hello)
LINK_DIRECTORIES(/Users/chenhui13/github/compilers/static_dynamic_lib/dynamic_cmake1/usr/lib)
TARGET_LINK_LIBRARIES(main libhello.dylib)
