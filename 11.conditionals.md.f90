program conditionals

  implicit none
  integer :: age = 12
  ! ----- CONDITIONALS -----
  ! Relational Operators : == /= > < >= <=
  ! Logical Operators : .and. .or. .not.

  if (5 > 2) then 
    print *, "5 is greater than 2, apko nahi pata?"
  end if

  if ( 5 /= 9 ) then
    print *, "5 is not 9, hehe ur whole life was a lie."
  end if  

  
  if (age >= 18 .and. age <= 85) then
    print *, "You can drive a car!"
  else if (age < 18) then
    print *, "u r too young!"
  else if (age > 85 .and. age <= 100) then
    print *, "u r too old!"
  else
    print *, "u must be cyborg!"
  end if

  select case (age)
  case (18:85)
    print *, "You can drive a car!"
  case (0:18)
    print *, "u r too young!"
  case (86:100)
    print *, "u r too old!"
  case default
    print *, "u must be cyborg!"
  end select


end program conditionals
