

# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()

message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")

if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()


set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_SYSROOT /home/bg/Downloads/gcc-linaro-6.3.1-2017.05-x86_64_arm-linux-gnueabihf/arm-linux-gnueabihf/libc)
#set(CMAKE_STAGING_PREFIX /home/devel/stage)

set(tools /home/bg/Downloads/gcc-linaro-6.3.1-2017.05-x86_64_arm-linux-gnueabihf)
set(CMAKE_C_COMPILER ${tools}/bin/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/arm-linux-gnueabihf-g++)

# Extra c, cxx, linkflags and defines


if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()

get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
# Explicitly defined "builddirs" of "host" dependencies
list(PREPEND CMAKE_MODULE_PATH "/home/bg/.conan/data/protobuf/3.17.1/_/_/package/25007a648d07c7cbb3425b10f5af07a5783e41c2/lib/cmake/protobuf" "/home/bg/.conan/data/ade/0.1.1f/_/_/package/1388ba94d0d9f35f4479d8203fa2e324c4cf2216/lib/cmake" "/home/bg/.conan/data/bzip2/1.0.8/_/_/package/d5264782edc539c8b2ad1cd1fdac852fef6cd054/lib/cmake")
# The root (which is the default builddirs) path of dependencies in the host context
list(PREPEND CMAKE_MODULE_PATH "/home/bg/.conan/data/opencv/4.5.5/demo_opencv/testing/package/80bed6fc33fdddb940a23c69cfb88e495c462d3b/" "/home/bg/.conan/data/gstreamer/1.19.2/_/_/package/ca28f7c5839c3fff39584f3ef0727f0ee617561d/" "/home/bg/.conan/data/zlib/1.2.12/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/" "/home/bg/.conan/data/libjpeg/9d/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/" "/home/bg/.conan/data/jasper/2.0.33/_/_/package/ffdb8b896f588ae041d17ddad8baf75f4525a232/" "/home/bg/.conan/data/libpng/1.6.37/_/_/package/f59646cd143d89d1e8db1cdc31428f8c3ba56c02/" "/home/bg/.conan/data/openexr/2.5.7/_/_/package/0a28399b735ade6e5373d97130657e1f69483d9b/" "/home/bg/.conan/data/eigen/3.3.9/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/" "/home/bg/.conan/data/libwebp/1.2.2/_/_/package/36601aa80003cb064e45c3a3c4e5f3a82685e91e/" "/home/bg/.conan/data/quirc/1.1/_/_/package/1d16e17ec7e5f53a79a103c2287f7ea378ada903/" "/home/bg/.conan/data/protobuf/3.17.1/_/_/package/25007a648d07c7cbb3425b10f5af07a5783e41c2/" "/home/bg/.conan/data/ade/0.1.1f/_/_/package/1388ba94d0d9f35f4479d8203fa2e324c4cf2216/" "/home/bg/.conan/data/glib/2.72.0/_/_/package/cc7196bdad60200a7370b972de88c1164cea2ddc/" "/home/bg/.conan/data/libffi/3.4.2/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/" "/home/bg/.conan/data/pcre/8.45/_/_/package/de33942033395cd86a254fab843186601854965d/" "/home/bg/.conan/data/libelf/0.8.13/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/" "/home/bg/.conan/data/libmount/2.36.2/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/" "/home/bg/.conan/data/libselinux/3.3/_/_/package/42bef276e5c9b6d841179c54f9ad6d6423730351/" "/home/bg/.conan/data/bzip2/1.0.8/_/_/package/d5264782edc539c8b2ad1cd1fdac852fef6cd054/" "/home/bg/.conan/data/pcre2/10.37/_/_/package/bb5628708e58457f5eabfb63160be2e74bffc93b/")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The explicitly defined "builddirs" of "host" context dependencies must be in PREFIX_PATH
list(PREPEND CMAKE_PREFIX_PATH "/home/bg/.conan/data/protobuf/3.17.1/_/_/package/25007a648d07c7cbb3425b10f5af07a5783e41c2/lib/cmake/protobuf" "/home/bg/.conan/data/ade/0.1.1f/_/_/package/1388ba94d0d9f35f4479d8203fa2e324c4cf2216/lib/cmake" "/home/bg/.conan/data/bzip2/1.0.8/_/_/package/d5264782edc539c8b2ad1cd1fdac852fef6cd054/lib/cmake")
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_LIBRARY_PATH "/home/bg/.conan/data/opencv/4.5.5/demo_opencv/testing/package/80bed6fc33fdddb940a23c69cfb88e495c462d3b/lib" "/home/bg/.conan/data/gstreamer/1.19.2/_/_/package/ca28f7c5839c3fff39584f3ef0727f0ee617561d/lib" "/home/bg/.conan/data/zlib/1.2.12/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/lib" "/home/bg/.conan/data/libjpeg/9d/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/lib" "/home/bg/.conan/data/jasper/2.0.33/_/_/package/ffdb8b896f588ae041d17ddad8baf75f4525a232/lib" "/home/bg/.conan/data/libpng/1.6.37/_/_/package/f59646cd143d89d1e8db1cdc31428f8c3ba56c02/lib" "/home/bg/.conan/data/openexr/2.5.7/_/_/package/0a28399b735ade6e5373d97130657e1f69483d9b/lib" "/home/bg/.conan/data/eigen/3.3.9/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib" "/home/bg/.conan/data/libwebp/1.2.2/_/_/package/36601aa80003cb064e45c3a3c4e5f3a82685e91e/lib" "/home/bg/.conan/data/quirc/1.1/_/_/package/1d16e17ec7e5f53a79a103c2287f7ea378ada903/lib" "/home/bg/.conan/data/protobuf/3.17.1/_/_/package/25007a648d07c7cbb3425b10f5af07a5783e41c2/lib" "/home/bg/.conan/data/ade/0.1.1f/_/_/package/1388ba94d0d9f35f4479d8203fa2e324c4cf2216/lib" "/home/bg/.conan/data/glib/2.72.0/_/_/package/cc7196bdad60200a7370b972de88c1164cea2ddc/lib" "/home/bg/.conan/data/libffi/3.4.2/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/lib" "/home/bg/.conan/data/pcre/8.45/_/_/package/de33942033395cd86a254fab843186601854965d/lib" "/home/bg/.conan/data/libelf/0.8.13/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/lib" "/home/bg/.conan/data/libmount/2.36.2/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/lib" "/home/bg/.conan/data/libselinux/3.3/_/_/package/42bef276e5c9b6d841179c54f9ad6d6423730351/lib" "/home/bg/.conan/data/bzip2/1.0.8/_/_/package/d5264782edc539c8b2ad1cd1fdac852fef6cd054/lib" "/home/bg/.conan/data/pcre2/10.37/_/_/package/bb5628708e58457f5eabfb63160be2e74bffc93b/lib")
list(PREPEND CMAKE_INCLUDE_PATH "/home/bg/.conan/data/opencv/4.5.5/demo_opencv/testing/package/80bed6fc33fdddb940a23c69cfb88e495c462d3b/include" "/home/bg/.conan/data/opencv/4.5.5/demo_opencv/testing/package/80bed6fc33fdddb940a23c69cfb88e495c462d3b/include/opencv4" "/home/bg/.conan/data/gstreamer/1.19.2/_/_/package/ca28f7c5839c3fff39584f3ef0727f0ee617561d/include/gstreamer-1.0" "/home/bg/.conan/data/zlib/1.2.12/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/include" "/home/bg/.conan/data/libjpeg/9d/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/include" "/home/bg/.conan/data/jasper/2.0.33/_/_/package/ffdb8b896f588ae041d17ddad8baf75f4525a232/include" "/home/bg/.conan/data/libpng/1.6.37/_/_/package/f59646cd143d89d1e8db1cdc31428f8c3ba56c02/include" "/home/bg/.conan/data/openexr/2.5.7/_/_/package/0a28399b735ade6e5373d97130657e1f69483d9b/include" "/home/bg/.conan/data/openexr/2.5.7/_/_/package/0a28399b735ade6e5373d97130657e1f69483d9b/include/OpenEXR" "/home/bg/.conan/data/eigen/3.3.9/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include/eigen3" "/home/bg/.conan/data/libwebp/1.2.2/_/_/package/36601aa80003cb064e45c3a3c4e5f3a82685e91e/include" "/home/bg/.conan/data/quirc/1.1/_/_/package/1d16e17ec7e5f53a79a103c2287f7ea378ada903/include" "/home/bg/.conan/data/protobuf/3.17.1/_/_/package/25007a648d07c7cbb3425b10f5af07a5783e41c2/include" "/home/bg/.conan/data/ade/0.1.1f/_/_/package/1388ba94d0d9f35f4479d8203fa2e324c4cf2216/include" "/home/bg/.conan/data/glib/2.72.0/_/_/package/cc7196bdad60200a7370b972de88c1164cea2ddc/include" "/home/bg/.conan/data/glib/2.72.0/_/_/package/cc7196bdad60200a7370b972de88c1164cea2ddc/include/gio-unix-2.0" "/home/bg/.conan/data/glib/2.72.0/_/_/package/cc7196bdad60200a7370b972de88c1164cea2ddc/include/glib-2.0" "/home/bg/.conan/data/glib/2.72.0/_/_/package/cc7196bdad60200a7370b972de88c1164cea2ddc/lib/glib-2.0/include" "/home/bg/.conan/data/libffi/3.4.2/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/include" "/home/bg/.conan/data/pcre/8.45/_/_/package/de33942033395cd86a254fab843186601854965d/include" "/home/bg/.conan/data/libelf/0.8.13/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/include/libelf" "/home/bg/.conan/data/libelf/0.8.13/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/include" "/home/bg/.conan/data/libmount/2.36.2/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/include" "/home/bg/.conan/data/libmount/2.36.2/_/_/package/0f156d27be3912a987576075be59dde67d0b4500/include/libmount" "/home/bg/.conan/data/libselinux/3.3/_/_/package/42bef276e5c9b6d841179c54f9ad6d6423730351/include" "/home/bg/.conan/data/bzip2/1.0.8/_/_/package/d5264782edc539c8b2ad1cd1fdac852fef6cd054/include" "/home/bg/.conan/data/pcre2/10.37/_/_/package/bb5628708e58457f5eabfb63160be2e74bffc93b/include")





# Variables
# Variables  per configuration


# Preprocessor definitions
# Preprocessor definitions per configuration
