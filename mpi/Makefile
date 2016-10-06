#FC = pgfortran
#FLAGS = -g -acc -Minfo -ta=tesla
FC = ftn
FLAGS = -g -h acc

all: openacc_example

openacc_example: program.f90
	$(FC) $(FLAGS) -o openacc_example program.f90

clean: 
	rm -f openacc_example
