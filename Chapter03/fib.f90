PROGRAM F3C
      I=31; K=I
      CALL F(I)
      PRINT *,K,'th Fibonacci number is',I
!     STOP
      END PROGRAM

!
! Subroutine F(I) calculates the I'th Fibonacci number
! It uses ALGORITHM 3C: BINET'S FORMULA
!
      SUBROUTINE F(I)
      REAL*8 PHI
      IF(I.LT.2) GO TO 1
      PHI=(1+SQRT(5.))/2.
      I=(PHI**(I+1) - (1.-PHI)**(I+1)) / SQRT(5.)
      RETURN
1     I=1
      RETURN
      END SUBROUTINE

