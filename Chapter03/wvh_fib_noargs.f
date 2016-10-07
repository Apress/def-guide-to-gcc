!
! Hacked Fibonacci program from the web:
!    http://cubbi.org/serious/fibonacci/fortran.html
!
PROGRAM MAIN
      DO 200, K=0,31
         I=K
         CALL F(I)
         PRINT *,K,'th Fibonacci number is',I
200   CONTINUE
      END PROGRAM

!
! Subroutine F(I) calculates the I'th Fibonacci number
! It uses ALGORITHM 2A-3: DATA STRUCTURE - SIMPLE LIST
!
      SUBROUTINE F(I)
      DIMENSION A(I+1)
      A(1)=0; A(2)=1
      DO 1, J=3,I+1
          A(J)=A(J-1)+A(J-2)
1     CONTINUE
      I=A(I+1)
      RETURN
      END SUBROUTINE
