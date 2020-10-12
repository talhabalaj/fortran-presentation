program tictactoe
    implicit none
  
    integer :: player_choice = 0
    logical :: turn = .true.
    integer :: current_player = -1 
    integer, dimension(3,3) :: slots_available
    slots_available = transpose(reshape((/ 1, 2, 3, 4, 5, 6, 7, 8, 9 /), shape(slots_available)))
    
    call start_game()

    contains
    
        subroutine start_game()
            integer :: i = 0
            call draw_board()

            do i = 1, 9
                call validate_user_input()
                if(win_check()) then
                    if(turn) then
                        write(*, *)
                        print *, "Mubarak ho player1 jeet gaye tum!"
                        write(*, *)
                        print *, "Player2 agli baar koshish krna."
                        write(*, *)
                    else
                        write(*, *)
                        print *, "Mubarak ho player2 jeet gaye tum!"
                        write(*, *)
                        print *, "Player1 agli baar koshish krna."
                        write(*, *)
                    end if
                    exit
                end if
                if(i == 9)then
                    write(*, *)
                    print *, "Tie ho gya!"
                    write(*, *)
                    print *, "Chalo koi bat ni agli bar koshish krna dono."
                    write(*, *)
                end if
                if(turn)then
                    turn = .false.
                else
                    turn = .true.
                end if
            end do       

        end subroutine start_game

        !---------------------------------------------------------------------------------------------

        function win_check() result(natija)
            logical :: natija
            if(slots_available(1, 1) == slots_available(1, 2) .and. slots_available(1, 1) == slots_available(1, 3))then
                natija = .true.
            else if(slots_available(1, 1) == slots_available(2, 2) .and. slots_available(1, 1) == slots_available(3, 3))then
                natija = .true.
            else if(slots_available(2, 1) == slots_available(2, 2) .and. slots_available(2, 1) == slots_available(2, 3))then
                natija = .true.
            else if(slots_available(3, 1) == slots_available(3, 2) .and. slots_available(3, 1) == slots_available(3, 3))then
                natija = .true.
            else if(slots_available(1, 3) == slots_available(2, 2) .and. slots_available(1, 3) == slots_available(3, 1))then
                natija = .true.
            else if(slots_available(1, 1) == slots_available(2, 1) .and. slots_available(1, 1) == slots_available(3, 1))then
                natija = .true.
            else if(slots_available(1, 2) == slots_available(2, 2) .and. slots_available(1, 2) == slots_available(3, 2))then
                natija = .true.
            else if(slots_available(1, 3) == slots_available(2, 3) .and. slots_available(1, 3) == slots_available(3, 3))then
                natija = .true.
            else
                natija = .false.
            end if
        end function win_check

        !---------------------------------------------------------------------------------------------

        subroutine validate_user_input()
            write (*, *)
            if(turn) then
                print *, "Player1 tyumhari bari agai!"
                current_player = -1
            else
                print *, "Player2 tyumhari bari agai!"
                current_player = 0
            end if

            write (*, "(a34)", advance="no") "Chalo bai koi number choose kro: "
            read *, player_choice

            if(player_choice < 1 .or. player_choice > 9) then
                do while(player_choice < 1 .or. player_choice > 9)
                    write(*, *)
                    print *, "Galat number choose kia hai :("
                    write (*, "(a32)", advance="no") "Dubara choose kro sahi wala: "
                    read *, player_choice
                end do
            end if
           
            if(ALL( slots_available /= player_choice)) then
                do while(ALL( slots_available /= player_choice)) 
                    write(*, *)
                    print *, "Oho! ye to pehly he use ho gya :("
                    write (*, "(a32)", advance="no") "Dubara choose kro sahi wala: "
                    read *, player_choice
                end do
            end if

            if(player_choice == 1) then
                slots_available(1, 1) = current_player
            else if(player_choice == 2) then
                slots_available(1, 2) = current_player
            else if(player_choice == 3) then
                slots_available(1, 3) = current_player
            else if(player_choice == 4) then
                slots_available(2, 1) = current_player
            else if(player_choice == 5) then
                slots_available(2, 2) = current_player
            else if(player_choice == 6) then
                slots_available(2, 3) = current_player
            else if(player_choice == 7) then
                slots_available(3, 1) = current_player
            else if(player_choice == 8) then
                slots_available(3, 2) = current_player
            else if(player_choice == 9) then
                slots_available(3, 3) = current_player
            end if
            
            call draw_board()
        end subroutine validate_user_input
        
        !---------------------------------------------------------------------------------------------

        subroutine draw_board()
            integer :: i = 0, j = 0
           
            call system('cls')
            write(*, *)
            print *, "Tic Tac Toe"
            write(*, *)
            print *, "Player1 tumhara 'X' hai"
            write(*, *)
            print *, "Player2 tumhara 'O' hai"
            write(*, *)

            do i = 1, 3
                do j = 1, 3
                    if(slots_available(i, j) == 0) then
                        write (*, "(a3)", advance = "no") "O"
                    else if(slots_available(i, j) == -1) then
                        write (*, "(a3)", advance = "no") "X"
                    else
                        write (*, "(i3)", advance = "no") slots_available(i, j)
                    end if

                    if(j /= 3) then
                        write (*, "(a3)", advance = "no") "  |"
                    end if
                end do

                if(i /= 3) then
                    print "(/, a16)", "----+-----+----"
                end if
            end do
            write(*, *)
        end subroutine draw_board
   
  
      
  
  end program tictactoe
  