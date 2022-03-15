program Arithmetic

! Programa que realiza las operaciones básicas con dos números solicitados al usuario
! Compilación del programa en terminal
! gfortran E2.f08 -o exe

! Declaramos variables
 implicit none
  real:: a,b,c,d,e,f,g

! Se solicita al usuario dos números en pantalla
write(*,*) 'Operaciones básicas de dos números'
write(*,*) 'Dame el primer número: '
read(*,*) a
write(*,*) 'Dame el segundo número: '
read(*,*) b

! Operaciones
c = a + b  ! Suma
d = a - b  ! Resta
e = a * b  ! Multiplicación
f = a / b  ! División
g = a ** b ! Potencia

! Imprime en el mismo renglón
write(*,*) ' Las suma de a + b: ', C ! Fortran no distingue entre Mayúscula o minúscula
write(*,*) ' Las resta de a - b: ', D
write(*,*) ' Las multiplicación de a * b: ', E
write(*,*) ' Las división de a / b: ', F
!Imprime en pantalla dejando un renglón
write(*,*) ' Potenciación de a^b : '
write(*,*) G

end program
