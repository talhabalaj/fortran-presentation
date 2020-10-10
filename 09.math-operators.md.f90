! Math Operators 

program math_opeartors

  implicit none
  real :: float_num = 1.111111111111111
  real :: float_num2 = 1.111111111111111
  double precision :: dbl_num = 1.1111111111111111d+0
  double precision :: dbl_num2 = 1.1111111111111111d+0

  print "(a8,i1)", "5 + 4 = ", (5 + 4)
  print "(a8,i1)", "5 - 4 = ", (5 - 4)
  print "(a8,i2)", "5 * 4 = ", (5 * 4)
  print "(a8,i1)", "5 / 4 = ", (5 / 4)
  ! Modulus
  print "(a8,i1)", "5 % 4 = ", mod(5,4)
  ! Exponentiation
  print "(a9,i3)", "5 ** 4 = ", (5**4)

  ! You get 6 digits of precision by default
  print "(f17.15)", float_num + float_num2
  
  ! Doubles are accurate to 15 digits
  print "(f18.16)", dbl_num + dbl_num2

end program math_opeartors
