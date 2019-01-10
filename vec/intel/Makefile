
build: clean
	#ifort -c rdtsc.s
	#ifort -O3 -no-vec -c loopd.f
	ifort -O3 -c loopd.f
	ifort -O0 -c maind.f
	ifort -o vecd.exe maind.o loopd.o
	#ifort -o vecd.exe maind.o loopd.o rdtsc.o

run: build
	./vecd.exe

clean:
	rm -f *.o vecd.exe
