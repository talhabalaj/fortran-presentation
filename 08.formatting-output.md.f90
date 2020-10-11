! Formatting Output

program formatting_output

  implicit none
  print *, "My age", 10
  ! print format_specifier, ...args
  ! print "(arg1_format, arg2_format)", arg1, arg2
  print "(a5, i2)", "My age", 10 
  ! for Integers > RiW
  print "(3i5)", 3, 4, 5
  
  ! for real > RfW.D
  print "(3f5.1)", 3.1, 4.21, 5.23

  ! printing new line
  print "(a5, /, a5)", "Talha", "Balaj"

  ! exponetional form
  print "(e10.3)", 10.23423423

end program formatting_output
