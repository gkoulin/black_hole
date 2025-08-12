add_executable(2D_lensing 2D_lensing.cpp)
target_link_libraries(2D_lensing PRIVATE glew_s glfw glm-header-only)
target_compile_features(2D_lensing PRIVATE cxx_std_23)

add_executable(black_hole black_hole.cpp)
target_link_libraries(black_hole PRIVATE glew_s glfw glm-header-only)
target_compile_features(black_hole PRIVATE cxx_std_23)

add_custom_command(TARGET black_hole POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_if_different
  ${CMAKE_CURRENT_SOURCE_DIR}/geodesic.comp
  ${CMAKE_CURRENT_SOURCE_DIR}/grid.frag
  ${CMAKE_CURRENT_SOURCE_DIR}/grid.vert
  $<TARGET_FILE_DIR:black_hole>
)
