file(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/sample_action_server/msg"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/test-future.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
