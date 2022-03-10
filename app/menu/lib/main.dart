///o presente trabalho tem por objetivo diminuir o tempo de fila na cantina
///da UFFS. Um dos problemas que eu tenho é a indecisão de escolher o que pedir,
///dessa forma, com esse aplicativo é possível verificar as opções disponíveis
///e adicionar sua escolha em uma lista antes de entrar na fila e assim diminuir
///o tempo de permanência na fila e todos ficam felizes.
///desenvolvido por Natalia Artini Ferrandin - nataliaartini@hotmail.com

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/scroll_view.dart';

void main() {
  runApp(
      Cantina());
}

class Cantina extends StatelessWidget {
  List<String> _minhalista = [];
  ///statefulWidget para componentes com estado que sofrem alteração em tempo de execução
  ///e statelessWidget para conteúdo estático, sem estado ou sem alteração
  @override
  ///possui estado e sobrescreve método build em statelessWidget (sem estado)
  Widget build(BuildContext context) {
    const title = 'Cardápio Cantina UFFS';
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text("Cardápio da Semana"),
          backgroundColor: Colors.lightGreen[900],
          shadowColor: Colors.green,
          actions: [
            AdicionaLista(),
          ],
        ),
        body: SingleChildScrollView(
          child: ListaMenu(),
        ),
      ),
    );
  }
}


class ListaMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
    children: <Widget>[
      ItensMenu("Coxinha", "Carne de frango com catupiry ou palmito com catupiry.", "5,00"),
      ItensMenu("Sanduíche de frango", "Carne de frango, maionese, alface e tomate.", "4,00"),
      ItensMenu("Sanduíche de salame", "Salame, queijo, presunto, maionese e tomate.", "4,00"),
      ItensMenu("Mini pizza", "Calabresa, musarela, molho de tomate.", "7,00"),
      ItensMenu("Pão de queijo", "temperado com orégano ou tradicional.", "2,00"),
      ItensMenu("Paçoca", "paçoquita", "0,75"),
      ItensMenu("Risoles de carne", "Carne de gado.", "5,00"),
      ItensMenu("Risoles de frango", "Carne de frango.", "5,00"),
      ItensMenu("Risoles de queijo", "Queijo Cheddar e musarela", "5,00"),
      ItensMenu("Risoles de brócolis", "Molho de brócolis crocante", "5,00"),
      ItensMenu("Rocambole de frango", "Carne de frango com catupiry.", "8,00"),
      ],
    );
  }
}


class ItensMenu extends StatelessWidget {

  final String alimento;
  final String descricao;
  final String preco;

  ItensMenu(this.alimento, this.descricao, this.preco);

  @override
  Widget build(BuildContext context) {
    return
      Card(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
         ListTile(
          leading: Icon(Icons.brunch_dining, color: Colors.green,),
          title: Text(alimento),
          subtitle: Text(descricao),
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 2),
              child: Icon(
                CupertinoIcons.money_dollar_circle,
                color: Colors.green[800],
                size: 24.0,),
            ),
            Expanded(
              child: Text(preco, textAlign: TextAlign.left),
            ),
            const SizedBox(width: 8),
            TextButton(
              child: const Text('Adicionar à minha lista',
                style: TextStyle(color: Colors.green),
              ),
              onPressed: () {
                },
            ),
            const SizedBox(width: 8),
          ],
        ),
      ],
    ),
    );
  }
}


///muda para página com a lista dos adicionados
class AdicionaLista extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      IconButton(
        icon: const Icon(Icons.list_sharp),
        iconSize: 30,
        tooltip: 'Abrir minha lista',
        onPressed: () {
          Navigator.push(context, MaterialPageRoute<MinhaLista>(
            builder: (BuildContext context) {
              return new Scaffold(
                appBar: new AppBar(
                  backgroundColor: Colors.lightGreen[900],
                  title: const Text('Itens adicionados na lista:'),
                  shadowColor: Colors.green,
                ),
                body: Card(
                child:
                 ListTile(
                  leading: Icon(Icons.brunch_dining, color: Colors.green,),
                  title: Text("Comidinhas :p"),
                ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}



///botao de adicionar na lista
class MinhaLista extends StatefulWidget {
//  const MinhaLista ({Key? key}) : super (key: key);

  @override
  _MinhaLista createState()=> _MinhaLista();

}

class _MinhaLista extends State<MinhaLista> {

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
