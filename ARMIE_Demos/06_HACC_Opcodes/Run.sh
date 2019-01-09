#!/bin/bash


export ARMIE_PATH=/opt/arm/arm-instruction-emulator-18.4_Generic-AArch64_Ubuntu-16.04_aarch64-linux/
export LLVM_MC=/opt/arm/arm-hpc-compiler-19.0_Generic-AArch64_Ubuntu-16.04_aarch64-linux/llvm-bin/llvm-mc

make clean all



# Run with ArmIE

armie -msve-vector-bits=512 -i libopcodes_emulated.so -- ./HACCKernels


awk '{print $3}' undecoded.txt | $ARMIE_PATH/bin64/enc2instr.py -mattr=+sve | awk -F: '{print $2}' | paste undecoded.txt /dev/stdin


