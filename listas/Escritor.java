import java.util.Scanner;

class Autor {
    public String nome;
    public int id;
}

public class Escritor {
    public static void main(String args[]) {

        Autor writer = new Autor();
        Scanner autornome = new Scanner(System.in);

        System.out.println("Digite o nome do autor");
        writer.nome= autornome.nextLine();

        Scanner autorid = new Scanner(System.in);

        System.out.println("Digite o id do autor");
        writer.id= autorid.nextInt();

        System.out.println("Nome: " + writer.nome);
        System.out.println("ID: " + writer.id);

    }
}