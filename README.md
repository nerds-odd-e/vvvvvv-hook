[![CMake](https://github.com/mod-cpp/cpp-template-project-vcpkg/actions/workflows/cmake.yml/badge.svg)](https://github.com/mod-cpp/cpp-template-project-vcpkg/actions/workflows/cmake.yml)
[![Clang Tidy](https://github.com/mod-cpp/cpp-template-project-vcpkg/actions/workflows/clang-tidy.yml/badge.svg)](https://github.com/mod-cpp/cpp-template-project-vcpkg/actions/workflows/clang-tidy.yml)

# C++ Template Project (with vcpkg support)

This is a very minimal C++ template project.

It uses CMake to generate a build and Vcpkg for dependency management.

Using the template and opening the folder in IDEs like VSCode should be enough, there the recommended plugins should be installed and the correct preset selected.

Currently it will install 2 dependencies, Catch2 for unit tests and fmt for text formatting and printing.

# How to build
```
mkdir build
cd build
cmake -A Win32 -S ..
cmake --build .
```
Please note that `-A Win32` is quite important here since the detours lib installed via vcpkg only supports 32 bit builds.

# How to run
```
cd build\bin\Debug
loader.exe
```