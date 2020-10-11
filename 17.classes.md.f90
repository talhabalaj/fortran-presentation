module triangle_mod
  implicit none

  type triangle
    real :: width, height
  contains
    procedure :: get_area
  end type

  contains
    function get_area(this) result(area)
      class(triangle), intent(in) :: this
      real :: area
      print *, this%height, this%width
      area = (1.0 / 2) * this%height * this%width
    end function
    

end module triangle_mod

program demo
  use triangle_mod
  implicit none
  
  type(triangle) :: tri_1
  tri_1%width = 10
  tri_1%height = 10

  print *, "Area: ", tri_1%get_area()
end program demo

