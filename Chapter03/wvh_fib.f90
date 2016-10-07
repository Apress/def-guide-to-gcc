!
! Simple program to print a certain number of values
!  in the Fibonacci sequence.
!
! Lifted the F(I) routine from:
!
!    http://cubbi.org/serious/fibonacci/fortran.html
!
! Added command-line arg parsing, corrected fib 
!  value sequence in F SUBROUTINE to begin with 0, etc.
!
! NOTE: This code uses the intrinsic functions/subroutines 
!       iargc() and getarg() for command-line parsing. 
! 
!  - wvh
!
PROGRAM MAIN
      integer i
      integer iargc
      integer numarg
      character ( len = 80 ) arg
      character ( len = 80 ) home

      numarg = iargc ( )
 
!      call getenv ( "HOME", home) 
!      print *,'Value of HOME is',home

      if (numarg .ne. 0) then
         call getarg ( 1, arg )
         read(arg,*) j
         DO 100, K=0,j-1
            i = k
            call f(i)
            print *,i
100      continue
      else
         print *,'Usage: fibonacci num-of-sequence-values-to-print'
      end if

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
