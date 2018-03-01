program elemental_test
  use mo_elemental

  real, dimension(100) :: arg1, arg2, res
  integer :: i

  do i = 1, 100
    arg1(i) = i*i
    arg2(i) = i+i
  end do

  res(:) = do_some_stuff(arg1(:), arg2(:))

  print*, sum(res(:))
end program elemental_test
