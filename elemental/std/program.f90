program elemental_test
  use mo_elemental

  real, dimension(100) :: arg1, arg2, res
  integer :: i

  !$acc data create(arg1, arg2, create)
  !$acc parallel loop gang vector
  do i = 1, 100
    arg1(i) = i*i
    arg2(i) = i+i
  end do
  
  !$acc kernels
  res(:) = do_some_stuff(arg1(:), arg2(:))
  !$acc end kernels

  !$acc end data
  print*, sum(res(:))
end program elemental_test
