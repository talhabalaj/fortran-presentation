! User Input 1

program user_input
  implicit none
  character(len=20) :: f_name 
  print *, "What's your name, boi? "
  
  read *, f_name
  print *, "Hello,  ", f_name
  
end program user_input
