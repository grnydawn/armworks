#-⁠Mvect
#-Mnovect

build: clean
	pgfortran -O3 -c loopd.f
	pgfortran -O0 -c maind.f
	pgfortran -o vecd.exe maind.o loopd.o

run: build
	./vecd.exe

clean:
	rm -f *.o vecd.exe
