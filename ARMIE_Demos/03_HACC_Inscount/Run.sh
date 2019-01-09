#!/bin/bash


make clean all



# Run with ArmIE

armie -msve-vector-bits=128 -i libinscount_emulated.so -- ./HACCKernels

#/opt/arm/arm-instruction-emulator-18.4_Generic-AArch64_RHEL-7_aarch64-linux/bin64/../bin64/drrun -client /opt/arm/arm-instruction-emulator-18.4_Generic-AArch64_RHEL-7_aarch64-linux/bin64/../lib64/release/libsve_512.so 0 "" -client /opt/arm/arm-instruction-emulator-18.4_Generic-AArch64_RHEL-7_aarch64-linux/bin64/../samples/bin64/libinscount_emulated.so 1 "-only_from_app" -max_bb_instrs 32 -max_trace_bbs 4 -- ./HACCKernels
