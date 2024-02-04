find_path(DETOURS_INCLUDE_DIRS "detours/detours.h")
find_library(DETOURS_LIBRARY detours REQUIRED)

add_library(hook_sleep SHARED hook_sleep.cpp)
target_include_directories(hook_sleep PRIVATE ${DETOURS_INCLUDE_DIRS})
target_link_libraries(hook_sleep PRIVATE ${DETOURS_LIBRARY})
target_link_options(hook_sleep PRIVATE "/export:DetourFinishHelperProcess,@1,NONAME")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /w")

set_target_properties(hook_sleep
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)