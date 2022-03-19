import java.util.Scanner;

class CriaPessoa {
    private String nome;
    private int idade;
    private float peso;

    void setNome(String nome) {
        this.nome = nome;
    }

    String getNome() {
        return this.nome;
    }


    void setIdade(int idade) {
        this.idade = idade;
    }

    int getIdade() {
        return this.idade;
    }


    void setPeso(float peso) {
        this.peso = peso;
    }

    float getPeso() {
        return this.peso;
    }

    // Imprime todas as propriedades da classe
    void imprimeDados() {
        System.out.println("Nome: " + this.nome + "\nIdade: " +
                this.idade + "\nPeso: " + this.peso);
    }
}


public class Pessoa {
    public static void main(String[] args) {
        // vamos criar uma nova pessoa
        CriaPessoa p = new CriaPessoa();
        Scanner nome = new Scanner(System.in);
        System.out.println("Digite o nome: ");
        String nome1 = nome.nextLine();

        Scanner idade = new Scanner(System.in);
        System.out.println("Digite a idade: ");
        int idade1 = Integer.parseInt(idade.nextLine());

        Scanner peso = new Scanner(System.in);
        System.out.println("Digite o peso: ");
        float peso1 = Float.parseFloat(peso.nextLine());

        p.setNome(nome1);
        p.setIdade(idade1);
        p.setPeso(peso1);

        // vamos mostrar os dados da pessoa
        p.imprimeDados();

    }
}