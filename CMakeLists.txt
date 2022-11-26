cmake_minimum_required(VERSION 3.16)
project(CPUFP)

enable_language(C ASM)
find_package(Threads)


FILE(GLOB sources
	./asm/*.S
	./*.c
    )

add_executable(cpufp ${sources} )
target_link_libraries(cpufp ${CMAKE_THREAD_LIBS_INIT})
