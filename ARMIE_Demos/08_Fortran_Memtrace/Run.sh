#!/bin/bash


make clean all SVE=1


OMP_NUM_THREADS=1 armie -e libmemtrace_sve_512.so -i libmemtrace_simple.so -- ./accelerate_sve -nx 1000 -ny 1000 -its 10
