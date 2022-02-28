public class Conta {
    public static void main( String args[]) {

        int a = 5;
        int b = 5;
        System.out.println("a soma dos inteiros 5 + 5: " + (a + b));
        double c = 5.5;
        double d = 4.5;
        System.out.println("a soma dos decimais 5,5 + 4,5: " + (c + d));

        int i = 0;
        System.out.println("tabuada de 5:");
        for (i = 1; i <= 10; i = i+1){
            System.out.println(i + " X 5 = " + (5 * i));
        }
        for (i = 1; i<=10; ++i){
            System.out.println(i + " X 6 = " + (6*i) + " | " + i + " X 2 = " + (2*i));
        }
    }
}