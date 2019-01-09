#!/bin/bash

# Run with ArmIE
echo "Scaling study for different SVE vector lengths"

pcol=192
mkdir -p ins_pcols${pcol}

for i in 128 256 512 1024 2048
do
  echo "MG2 with emulated SVE vector length of "$i" bits - Instruction Count"
  armie -msve-vector-bits="$i" -i libinscount_emulated.so -- ./kernel.exe 2>&1 |
 grep "instructions executed" >  ins_pcols$pcol/mg2-v01.vec-$i-bits.ins
  echo ""
done
