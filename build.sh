clang-12 -c asm/cpufp_kernel_x86_sse.S
clang-12 -c asm/cpufp_kernel_x86_avx.S
clang-12 -c asm/cpufp_kernel_x86_fma.S
clang-12 -c asm/cpufp_kernel_x86_avx512f.S
clang-12 -c asm/cpufp_kernel_x86_avx512_vnni.S
clang-12 -c asm/cpufp_kernel_x86_avx_vnni.S
clang-12 -O3 -c table.c
clang-12 -O3 -c smtl.c
clang-12 -O3 -c cpuid_x86.c
clang-12 -O3 -c cpubm_x86.c
clang-12 -O3 -c cpufp_x86.c
clang-12 -O3 -o cpufp -pthread table.o smtl.o cpuid_x86.o cpubm_x86.o cpufp_x86.o cpufp_kernel_x86_sse.o cpufp_kernel_x86_avx.o cpufp_kernel_x86_fma.o cpufp_kernel_x86_avx512f.o cpufp_kernel_x86_avx512_vnni.o cpufp_kernel_x86_avx_vnni.o
