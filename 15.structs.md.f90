program structs
  implicit none
  
  type customer 
    character (len = 30) :: name
    integer :: age
    real :: credits
  end type 

  type(customer) :: cust
  type(integer) :: n
  type(customer), dimension(5) :: cust_array

  cust%name = "Talha Balaj"
  cust%age = 19
  cust%credits = 19.92634

  print "(a9, a11)", "Name: ", cust%name
  print "(a9, i2)", "Age: ", cust%age
  print "(a9, f5.2)", "Credits: ", cust%credits

  do n = 1, 5
    cust(n)%name = "Talha Balaj"
    cust(n)%age = 19
    cust(n)%credits = 19.92634
  end do

  do n = 1, 5
    print *, cust(n) % name
    print *, cust(n) % age
    print *, cust(n) % credits
  end do
end program 
