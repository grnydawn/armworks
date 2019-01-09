#!/bin/bash


make clean all



# Run with ArmIE
echo "Scaling study for different OpenMP thread counts"

for i in 1 2 4 8 16
do
  echo "HACCKernels with emulated SVE vector length of 512-bits on "$i" OMP threads - Instruction Count"
  OMP_NUM_THREADS=$i OMP_PROC_BIND=spread armie -msve-vector-bits=512 -i libinscount_emulated.so -- ./HACCKernels 2>&1 | grep "instructions executed"
  echo ""
done
