set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /w")

add_executable(sleep main.cpp)

set_target_properties(sleep
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
