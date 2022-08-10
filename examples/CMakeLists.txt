cmake_minimum_required(VERSION 3.1)
project(nadjieb_mjpeg_streamer_examples LANGUAGES CXX)


if(CMAKE_VERSION VERSION_LESS 3.0.0)
    include(CheckCXXCompilerFlag)
    check_cxx_compiler_flag(-std=c++11 COMPILER_SUPPORTS_CXX11)
    check_cxx_compiler_flag(-std=c++0x COMPILER_SUPPORTS_CXX0X)
    if(COMPILER_SUPPORTS_CXX11)
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
    elseif(COMPILER_SUPPORTS_CXX0X)
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
    endif()
else()
    SET(CMAKE_CXX_STANDARD 11)
    SET(CMAKE_CXX_STANDARD_REQUIRED ON)
endif()

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

find_package(nadjieb_mjpeg_streamer REQUIRED)
#find_package(OpenCV 4.2 REQUIRED)

add_executable(example ./example.cpp)
target_compile_features(example PRIVATE cxx_std_11)
target_link_libraries(example
    PRIVATE
        nadjieb_mjpeg_streamer::nadjieb_mjpeg_streamer
        #${OpenCV_LIBS}
        ${CONAN_LIBS}
)
