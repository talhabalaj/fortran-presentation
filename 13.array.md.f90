program arrays

  implicit none
  ! ----- ARRAYS -----
  ! Create ARRAY
  integer, dimension(1:5) :: a1
  ! Create multidimensional array (Matrix)
  integer, dimension(5,5) :: a4
  ! Dynamic Array  
  integer, dimension(:), allocatable :: a5
  integer :: size_of_array

  ! Helpers
  integer :: n, x, y

  do n = 1, 5
    a1(n) = n * n
  end do

  do n = 1, 5
    print 100, "-->", a1(n)
    100 format (a5, i3)
  end do

  do x = 1, 5
    do y = 1, 5
      a4(x, y) = x * y
    end do
  end do

  do x = 1, 5
    do y = 1, 5
      write (*, "(i5)", advance = "no") a4(x, y)
    end do
    write (*,*)
  end do
      
  do x = 1, 5
    print "(5i5)", (a4(x, y), y = 1, 5)
  end do

  print *, "phir kitne size ki chahiye?"
  read *, size_of_array
  allocate(a5(1:size_of_array))

  do x = 1, size_of_array
    a5(x) = 5 * x
  end do

  do x = 1, size_of_array
    print "(i5)", a5(x)
  end do

  a1 = (/ 10, 12, 14, 16, 18 /)

  do n = 1, 5
    print *,  a1(n)
  end do

end program arrays