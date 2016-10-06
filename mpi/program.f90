PROGRAM openacc_example
  
  REAL :: a(10)
  REAL :: b(10)
  INTEGER :: i
  INTEGER :: ierr

  CALL mpi_init(ierr)

  DO i = 1, 10
    a(i) = i
  END DO

  !$acc data copyin(a) copyout(b)
  !$acc parallel 
  !$acc loop
  DO i = 1, 10
    b(i) = a(i)
  END DO
  !$acc end parallel
  !$acc end data

  PRINT*,'sum of a: ', sum(a)
  PRINT*,'sum of a: ', sum(b)

  CALL mpi_finalize(ierr)

END PROGRAM openacc_example
