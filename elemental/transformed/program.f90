program elemental_test
  use mo_elemental
  integer, parameter :: nc = 100
  real, dimension(nc) :: arg1, arg2, res
  integer :: i

  do i = 1, nc
    arg1(i) = i*i
    arg2(i) = i+i
  end do

  res = do_some_stuff(arg1, arg2, nc)

  print*, sum(res(:))
end program elemental_test
