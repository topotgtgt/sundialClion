#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "yaml" for configuration "Debug"
set_property(TARGET yaml APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(yaml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/debug/lib/libyaml.a"
  )

list(APPEND _cmake_import_check_targets yaml )
list(APPEND _cmake_import_check_files_for_yaml "${_IMPORT_PREFIX}/debug/lib/libyaml.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
