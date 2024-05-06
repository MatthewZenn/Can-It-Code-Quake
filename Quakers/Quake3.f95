PROGRAM Q_sqrt
  IMPLICIT NONE

  REAL(4) :: input
  INTEGER(4) :: i
  REAL(4) :: x
  REAL(4) :: x2
  REAL(4) :: y

  PRINT *, 'Number:'
  READ "(f10.7)", input

  x2 = input * 0.5
  y = input
  i = TRANSFER(y, i)
  i = 1597463007 - RSHIFT(i,1)
  x = TRANSFER(i, x)

  x = x * (1.5 - (x2 * x * x))

  PRINT "(f10.7)", x
END PROGRAM Q_sqrt