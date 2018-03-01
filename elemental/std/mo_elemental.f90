module mo_elemental

  real, parameter :: coef1 = 5.12345678
  real, parameter :: coef2 = 2.98765424

contains

 real elemental function do_some_stuff(arg1, arg2)
  real, intent(in) :: arg1, arg2
  do_some_stuff = arg1 * coef1 * ( 1.0 + coef2 * arg2)
 end function do_some_stuff
end module mo_elemental
