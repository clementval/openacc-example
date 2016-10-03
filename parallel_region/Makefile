all: openacc_example

openacc_example: program.f90
	pgfortran -g -acc -Minfo -ta=tesla -o openacc_example program.f90

clean: 
	rm -f openacc_example
