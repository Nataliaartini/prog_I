//1-​Faça um programa em Java que imprima na tela a soma de dois números inteiros e a soma de dois 
//números deponto flutuante (double). Você não precisa ler os valores do teclado,
// pode apenas declarar e utilizar as variáveis.

//2-Faça um programa em Java imprima na tela a tabuada do número 

//3-​Faça um programa em Java imprima na tela a tabuada do número 6 e do número 2, lado a lado

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