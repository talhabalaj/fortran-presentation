program looping

  implicit none
  integer :: secret_number = 6, num, n

  ! Start, Finish, Step
  do n = 1, 10, 2
    print *, n
  end do

  do while (num /= secret_number)
    print *, "Guess marien!"
    read *, num
  end do

  print "(a, /)", "Tu kar liya guess phir"

end program looping
