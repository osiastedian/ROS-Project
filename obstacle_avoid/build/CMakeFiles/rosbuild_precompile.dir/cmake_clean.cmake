file(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/obstacle_avoid/msg"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/rosbuild_precompile.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
