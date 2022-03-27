program Quadratic_Equation

! Program that solves for roots of a Quadratic Equation ' ax² + bx + c = 0 '
! Compile fortran file through command-line interface
! gfortran E7.f90 -o exe

! Every variable should be defined in a declaration
IMPLICIT NONE
  real:: a, b, c, aux, x1, x2 ! REAL numbers
  complex :: z1, z2           ! COMPLEX numbers

! Clear the terminal screen before the program starts running
 call system('clear')

write(*,*) 'Obtendremos las raíces de una ecuación de 2do grado: ax² + bx + c '
write(*,*) 'Dame el coeficiente a: '
read(*,*) a
write(*,*) 'Dame el coeficiente b: '
read(*,*) b
write(*,*) 'Dame el coeficiente c: '
read(*,*) c

! Discriminant
aux = b**2 - 4*a*c

if (aux > 0.0) then ! If the discriminant is greater than zero
  x1 = (-b + sqrt(aux))/(2*a)
  x2 = (-b - sqrt(aux))/(2*a)

  write(*,*) 'Las raíces son reales'
  write(*,*) 'x1 = ', x1
  write(*,*) 'x2 = ', x2

else if (aux == 0.0) then ! If the discriminant is equal to zero
  x1 = (-b)/(2*a)

  write(*,*) 'Sólo hay una raíz real'
  write(*,*) 'x1 = ', x1

else if (aux < 0.0) then ! If the discriminant is less than zero
  z1 = (-b + sqrt(cmplx(aux)))/(2*a)
  z2 = (-b - sqrt(cmplx(aux)))/(2*a)

  write(*,*) 'Las raíces son imaginarias'
  write(*,*) 'x1 = ', z1
  write(*,*) 'x2 = ', z2

end if

end program Quadratic_Equation
