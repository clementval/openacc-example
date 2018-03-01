module mo_elemental

  real, parameter :: coef1 = 5.12345678
  real, parameter :: coef2 = 2.98765424

contains

 function do_some_stuff(arg1, arg2, nc)
  real, dimension(nc), intent(in) :: arg1, arg2
  real, dimension(nc) :: do_some_stuff
  integer, intent(in) :: nc
  integer :: i_nc
  
  do i_nc = 1, nc
    do_some_stuff(i_nc) = arg1(i_nc) * coef1 * (1.0 + coef2 * arg2(i_nc))
  end do
 end function do_some_stuff
end module mo_elemental
