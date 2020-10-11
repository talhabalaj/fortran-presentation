program functions
  implicit none

  integer :: square, cube
  print *, get_sum(1, 5)
  print *, get_sum2(2, 3)
  
  call square_cube(5, square, cube)
  print *, square, cube

  print *, "Factorial ", factorial(3)
  
  contains
    integer function get_sum(n1, n2)
      implicit none
      integer :: n1, n2, sum
      sum = n1 + n2
    end function get_sum

    function get_sum2(n1, n2) result(sum)
      integer, intent(in) :: n1, n2
      integer :: sum
      sum = n1 + n2
    end function get_sum2

    subroutine square_cube(n, m_square, m_cube)
      integer, intent(in) :: n
      integer, intent(out) :: m_square, m_cube
      m_square = n * n
      m_cube = n * n * n
    end subroutine square_cube

    recursive function factorial(n) result(o)
      integer :: n, o
      if (n == 1) then 
        o = 1
      else
        o = factorial(n - 1) * n
      end if
    end function

end program functions
