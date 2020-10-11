! Data types

program data_types

  implicit none
  
  real :: num = 0.1 ! basically float
  real, parameter :: PI = 3.141500 ! constant float 6digit
  double precision :: dbl = 0.111111111111111d+0 ! double 15digit 
  logical :: is_mad = .false. ! boolean
  character(len=10) :: name = "Talha"  ! string 
  complex :: com_num = (1, 2) ! 1 + 2i

end program data_types
