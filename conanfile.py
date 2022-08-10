# from conans import ConanFile, CMake
# from conans import ConanFile
# from conan.tools.cmake import CMakeToolchain, CMake, cmake_layout

from conan.tools.cmake import CMakeToolchain, cmake_layout
# from conan.tools.microsoft import msvc_runtime_flag
from conans import ConanFile, CMake, tools
from conans.errors import ConanInvalidConfiguration
import os
import textwrap

class CppMjpegStreamer(ConanFile):
    name = "cpp-mjpeg-streamer"
    version = "0.1"

    # Binary configuration
    settings = "os", "compiler", "build_type", "arch"
    options = {
            "shared": [True, False],
            "fPIC": [True, False],
            "NADJIEB_MJPEG_STREAMER_BuildTests": [True, False],
            }
    default_options = {
            "shared": False,
            "fPIC": True,
            "NADJIEB_MJPEG_STREAMER_BuildTests": False,
            }

    # Sources are located in the same place as this recipe, copy them to the recipe
    exports_sources = "CMakeLists.txt", "src/*", "cmake/*", "single_include/*"
    generators = "cmake", "cmake_find_package"
    _cmake = None

    def config_options(self):
        if self.settings.os == "Windows":
            del self.options.fPIC

    def layout(self):
        cmake_layout(self)

    def generate(self):
        tc = CMakeToolchain(self)
        #tc.preprocessor_definitions["NADJIEB_MJPEG_STREAMER_BuildTests"] = "OFF"
        tc.generate()

    def build(self):
        #cmake.configure()
        cmake = self.configure_()
        cmake.build()

    def configure_(self):
        if self._cmake:
            return self._cmake
        self._cmake = CMake(self)
        self._cmake.definitions["NADJIEB_MJPEG_STREAMER_BuildTests"] = self.options.NADJIEB_MJPEG_STREAMER_BuildTests
        self._cmake.configure(build_folder="build_subfolder")
        return self._cmake

    def configure_install(self):
        cmake = CMake(self)
        cmake.configure(build_folder="build_subfolder")
        return cmake

    def package(self):
        cmake = self.configure_install()
        cmake.install()

    def package_info(self):
        self.cpp_info.libs = ["nadjieb_mjpeg_streamer"]
        self.cpp_info.set_property("cmake_file_name", "nadjieb_mjpeg_streamer")
        self.cpp_info.filenames["cmake_find_package"] = "nadjieb_mjpeg_streamer"
        self.cpp_info.filenames["cmake_find_package_multi"] = "nadjieb_mjpeg_streamer"
