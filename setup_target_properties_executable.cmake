function(setup_target_properties_executable target)
    set_target_properties(${target} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_BASE_DIR}/${CONFIG_DIR}/bin)
    if (UNIX)
        set_target_properties(${target} PROPERTIES LINK_FLAGS -Wl,-rpath,'$ORIGIN/../lib/')
    endif()
endfunction()
