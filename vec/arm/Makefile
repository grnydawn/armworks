
PREC ?= d
SVE  ?= N # N or S

FC := armflang
#-Rpass=loop -Rpass-analysis=loop -Rpasss -missed=loop
FC_S_MAIN_FLAGS := -g -O0 -march=armv8-a+sve 
FC_S_LOOP_FLAGS := -g -O3 -march=armv8-a+sve
FC_N_MAIN_FLAGS := -g -O0
FC_N_LOOP_FLAGS := -g -O3

LD_FLAGS :=

build: vec${PREC}

vec${PREC}: loop${PREC}.o main${PREC}.o 
	${FC} ${LD_FLAGS} $^ -o $@

rund: vecd
	./vecd

runs: vecs
	./vecs

%.o : %.f
	$(FC) -c $(FC_FLAGS) $< -o $@

clean:
	rm -rf vec? main?.o loop?.o
