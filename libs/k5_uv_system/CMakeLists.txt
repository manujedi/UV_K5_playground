set(NAME uv_k5_system)
add_library(${NAME} STATIC)

target_include_directories(${NAME} INTERFACE
	.
)

target_include_directories(${NAME} PRIVATE
	.
)

target_sources(${NAME} PRIVATE
	system.cpp
	vtable.s
		api_v27.s
)

target_link_libraries(${NAME}
)

target_compile_options(${NAME} PRIVATE ${COMPILER_OPTIONS})

