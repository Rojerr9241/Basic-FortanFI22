program ciclo_do

! Program that examples the Do Loops syntax
! Compile fortran file through command-line interface
! gfortran E4.f90 -o exe

! Every variable should be defined in a declaration.
Implicit none
  integer :: i

! Clear the terminal screen before the program starts running
call system('clear')

! Do Loop syntax
do i=1,10  ! ( start, stop [,step] )
   write(*,*) 'i²=', i**2 !Statment(s)
end do ! End of the loop

end program
