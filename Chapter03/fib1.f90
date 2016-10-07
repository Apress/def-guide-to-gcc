PROGRAM F1A
      INTEGER*4 I,K
      I=19
      CALL F(I)
      PRINT *,I,'th Fibonacci number is',K
      STOP
      END PROGRAM
!
! Subroutine F(I) calculates the I'th Fibonacci number
! It uses closest possible approximation of ALGORITHM 1A: BINARY RECURSION
! that could be done using simple loops and arrays.
!
      SUBROUTINE F(I)
      DIMENSION A(2**I), B(2**I)
      DO 1 J=1,2**I
      A(J)=0; B(J)=0
1     CONTINUE
      A(1)=I+1;
      IP=0;
4     J2=1
      DO 2 J=1,2**IP
      B(J2)=A(J)-1
      B(J2+1)=A(J)-2
      J2=J2+2
2     CONTINUE
      DO 3 J=1,2**I
      A(J)=B(J)
3     CONTINUE
      IP=IP+1
      IF(A(1).GT.1) GO TO 4
9     IP=IP-1
      J2=1
      DO 5 J=1,2**(IP-1)
      IF(A(J2+1)-0)10,10,12
10    B(J)=A(J2)+1
      GO TO 7
12    B(J)=A(J2)+A(J2+1)
7     J2=J2+2
5     CONTINUE
      DO 8 J=1,2**(I-1)
      A(J)=B(J)
8     CONTINUE
      IF(IP.GT.1) GO TO 9
      K=A(1)
      RETURN
      END SUBROUTINE


