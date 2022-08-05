#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mylib::mylib" for configuration ""
set_property(TARGET mylib::mylib APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(mylib::mylib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmylib.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS mylib::mylib )
list(APPEND _IMPORT_CHECK_FILES_FOR_mylib::mylib "${_IMPORT_PREFIX}/lib/libmylib.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
