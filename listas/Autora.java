// ​Dado o código da classe abaixo, implemente os métodos getter e setter necessários para que os 
// atributos da classe possam ser lidos e alterados quando um objeto for instanciado. Além disso,
// implemente o método carrega Do Teclado()​, que, quando for chamado, faz a leitura do teclado de 
// uma string e um inteiro cujos valores são colocados nos atributos do objeto executando o método.

class Autor {
    private String nome;
    private int id;

    public Autor (String nome, int id) {
		this.nome = nome;
		this.id = id;
	}

	public double getNome() { return nome; }

	public double getID() { return id; }

	public void setNome (String nome) { this.nome = nome; }

	public void setID (int id) { this.id = id; }

}
