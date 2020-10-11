module rectangle_mod

  implicit none
  private
  integer :: m_width, m_height
  public get_area
 
  contains
    integer function get_area()
      implicit none
      integer :: p_area
      p_area = m_width * m_height
    end function

end module rectangle_mod

program modules
  use rectangle_mod
  implicit none
  m_height = 30
  m_width = 30
  
  print "(a6, i5)", "Area: ", get_area()
end program modules
