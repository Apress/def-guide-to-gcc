import java.io.PrintStream;

public class Fibonacci {

     private int calcFibonacci(int n) {
          if(n <= 1)
              return n;
          else  
              return calcFibonacci(n - 1) + calcFibonacci(n - 2);
     }

     public int calculate(int ctr) {
         int j;
         for (j = 0 ; j < ctr ; j++)
             System.out.print(calcFibonacci(j) + " ");
         System.out.println();
         return 0;
     }

     public Fibonacci() {
     }

     public static void main(String[] argv) {
         if ( argv.length == 0) {
             System.out.println("Usage: fibonacci num-of-sequence-values-to-print");
             System.exit(0);
         } else {
			 Fibonacci test = new Fibonacci();
			test.calculate(new Integer(argv[0]).intValue());
		 }
     }
}

