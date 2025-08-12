include(FetchContent)

FetchContent_Declare(glew
  URL https://github.com/nigels-com/glew/releases/download/glew-2.2.0/glew-2.2.0.tgz
  SOURCE_SUBDIR build/cmake
)
FetchContent_MakeAvailable(glew)
target_include_directories(glew PUBLIC $<BUILD_INTERFACE:${glew_SOURCE_DIR}/include>)
target_include_directories(glew_s PUBLIC $<BUILD_INTERFACE:${glew_SOURCE_DIR}/include>)

block()
set(BUILD_SHARED_LIBS OFF)
FetchContent_Declare(glfw
  GIT_REPOSITORY https://github.com/glfw/glfw.git
  GIT_TAG 3.3.5
)
FetchContent_MakeAvailable(glfw)
endblock()

FetchContent_Declare(glm
  GIT_REPOSITORY https://github.com/g-truc/glm.git
  GIT_TAG 1.0.1
)
FetchContent_MakeAvailable(glm)
