program plot2

! Program that computes some trigonometric functions and writes the result in a .dat file
! ** This program requires the 'plt_E8.py' to complete the exercise **

! Compile fortran file through command-line interface
! gfortran E8.f90 -o exe

! Every variable should be defined in a declaration
IMPLICIT NONE
 integer,parameter:: n = 101
 integer :: i
 real, dimension(n):: x
 real :: xi, xf, dx

! Clear the terminal screen before the program starts running
 call system('clear')

! Define the start and the end of the 'x' vector ( Domain )
xi = 0.0
xf = 10.0

! Change in x (dx)
 dx = (xf-xi)/(n-1)

! The vector x can be defined with an implied-DO
x(1:n)=[(xi + (i-1)*dx, i = 1,n)]

! Write the results in a .dat file
open(unit = 1, file ='Funciones_trigonometricas2.dat', status='replace', action='write')
write(1,'(a)') '    x     sen(x)     cos(x)     tan(x)     cot(x)     sec(x)     csc(x)' ! HEADER
  do i = 1,size(x)
    write(1,100) x(i), sin(x(i)), cos(x(i)), tan(x(i)), 1./tan(x(i)), 1./cos(x(i)), 1./sin(x(i)) ! 100 FORMAT
  end do
close(1)

! Prints in terminal with the 101 format
write(*,101)

! Define the format that will be used to print to the terminal
100 format((f7.3, 1x), 6(f10.3, 1x))
101 format(/, '¡ Fin del programa !', /)

end program
