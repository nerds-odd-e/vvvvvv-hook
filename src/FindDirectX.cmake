# - Find DirectX SDK installation
# Find the DirectX includes and library
# This module defines
#  DirectX_INCLUDE_DIRS, where to find d3d9.h, etc.
#  DirectX_LIBRARIES, libraries to link against to use DirectX.
#  DirectX_FOUND, If false, do not try to use DirectX.
#  DirectX_ROOT_DIR, directory where DirectX was installed.

#set(DirectX_INCLUDE_DIRS "C:/Program Files (x86)/Microsoft DirectX SDK (June 2010)/Include")
find_path(CMAKE_INCLUDE_ROOT "directxsdk/d3dx9.h")
set(DirectX_INCLUDE_DIRS "${CMAKE_INCLUDE_ROOT}/directxsdk")

#get_filename_component(DirectX_ROOT_DIR "${DirectX_INCLUDE_DIRS}/.." ABSOLUTE)

#set(DirectX_LIBRARY_PATHS "${DirectX_ROOT_DIR}/Lib/x86" "${DirectX_ROOT_DIR}/Lib")

#find_library(DirectX_D3D9_LIBRARY d3d9 ${DirectX_LIBRARY_PATHS} NO_DEFAULT_PATH)
find_library(DirectX_D3D9_LIBRARY d3d9 "C:\\Program Files (x86)\\Windows Kits\\10\\Lib\\10.0.22621.0\\um\\x86" NO_DEFAULT_PATH)
#find_library(DirectX_D3DX9_LIBRARY d3dx9 ${DirectX_LIBRARY_PATHS} NO_DEFAULT_PATH)
find_library(DirectX_D3DX9_LIBRARY d3dx9 REQUIRED)
set(DirectX_LIBRARIES ${DirectX_D3D9_LIBRARY} ${DirectX_D3DX9_LIBRARY})

# handle the QUIETLY and REQUIRED arguments and set DirectX_FOUND to TRUE if all listed variables are TRUE
include(FindPackageHandleStandardArgs)
#FIND_PACKAGE_HANDLE_STANDARD_ARGS(DirectX DEFAULT_MSG DirectX_ROOT_DIR DirectX_LIBRARIES DirectX_INCLUDE_DIRS)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(DirectX DEFAULT_MSG DirectX_LIBRARIES DirectX_INCLUDE_DIRS)
mark_as_advanced(DirectX_INCLUDE_DIRS DirectX_D3D9_LIBRARY DirectX_D3DX9_LIBRARY)
