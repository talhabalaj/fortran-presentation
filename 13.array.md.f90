program arrays

  implicit none
  ! ----- ARRAYS -----
  ! Create ARRAY
  ! index start with 1
  integer, dimension(1:5) :: a1
  ! Create multidimensional array (Matrix)
  integer, dimension(1:5,1:5) :: a4
  ! Dynamic Array  
  integer, dimension(:), allocatable :: a5
  integer :: size_of_array

  ! Helpers
  integer :: n, x, y

  do n = 1, 5
    a1(n) = n * n
    ! a1[n] = n * n // C 
  end do

  do n = 1, 5
    print *, "-->", a1(n)
  end do

  ! Matrices
  do x = 1, 5
    do y = 1, 5
      a4(x, y) = x * y
      ! a4[x][y] = x * y // C
    end do
  end do

  do x = 1, 5
    do y = 1, 5
      ! write (destination, format, options) ...args
      write (*, "(i5)", advance = "no") a4(x, y)
    end do
    write (*,*)
  end do
      
  do x = 1, 5
    print "(5i5)", ( a4(x, y), y = 1, 5) 
  end do

  ! dynamic array
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

  ! will not work
  ! a4 = (/ (/ 10, 12, 14, 16, 18 /), (/ 10, 12, 14, 16, 18 /), (/ 10, 12, 14, 16, 18 /), (/ 10, 12, 14, 16, 18 /), (/ 10, 12, 14, 16, 18 /) /)

end program arrays