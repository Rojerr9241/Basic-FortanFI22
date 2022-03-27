program plot1

! Program that computes y = atan(x²) and writes the result in a .dat file
! Compile fortran file through command-line interface
! gfortran E6.f90 -o exe

! Every variable should be defined in a declaration
IMPLICIT NONE
 integer,parameter:: n = 101
 integer :: i
 real, dimension(n):: x, y, x2
 real :: xi, xf, dx

! Clear the terminal screen before the program starts running
 call system('clear')

! Define the start and the end of the 'x' vector ( Domain )
xi = 0.0
xf = 10.0

! Change in x (dx)
 dx = (xf-xi)/(n-1)

! The vector x can be defined in 2 ways:

! 1. Syntax Do-loop
do i=1,n
  x(i) = xi + (i-1)*dx
end do

! 2. Syntax implied-DO   ( Statment , DO-var = initial, final [,step] )
x2(1:n) = [(xi + (i-1)*dx, i = 1,n)]

! The function 'y' can be defined using an intrinsic function of Fortran or a combination of these.
y = atan(x**2)

! Write the results in a .dat file
open(unit = 1, file ='atanx2.dat', status='replace', action='write')
  do i = 1,size(x)
    write(1,*) x2(i), y(i)
  end do
close(1)

end program
