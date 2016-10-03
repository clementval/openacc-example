PROGRAM openacc_example
  
  REAL :: a(10)
  REAL :: b(10)
  INTEGER :: i


  DO i = 1, 10
    a(i) = i
  END DO


  DO i = 1, 10
    b(i) = a(i)
  END DO

  PRINT*,'sum of a: ', sum(a)
  PRINT*,'sum of a: ', sum(b)


END PROGRAM openacc_example
