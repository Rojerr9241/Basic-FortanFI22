program norm

! Program that defines vectors and does arithmetic operations with them 
! Compile fortran file through command-line interface
! gfortran E5.f90 -o exe

! Every variable should be defined in a declaration.
IMPLICIT NONE
  real, dimension(3):: A, B, C, D  ! Dimension (3) means A = [a1, a2, a3]
  real:: norm

! A vector can be entered element by element
B(1) = 3
B(2) = 12
B(3) = 1

! Other option is entered de whole vector in a row
C = [8, 7 ,2]

! Or set it equal to a constant
D = 1.0

!Also, a vector can be defined with an expression
A = B + 3.0*C - 2.0*D

! NORM  =   sqrt(a1² + a2² + a3²)
norm = sqrt(sum(A*A))

! Prints the A elements in terminal, with the 100 format
write(*,100) A(1), A(2), A(3), norm

! Define the format that will be used to print to the terminal
100 format(/ ' Resultado ',/,&
          'A(1): ', f0.6,/,&
          'A(2): ', f0.6,/,&
          'A(3): ', f0.6,/,&
          'Norm vector of A: ', f0.10, /)

end program
