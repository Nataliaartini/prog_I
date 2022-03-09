import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/scroll_view.dart';

void main() {
  runApp(
      MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


///talvez eu use essa classe pra fazer pagina lista depois, então deixa ela ai bonitinha

class _MyAppState extends State<MyApp> {
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
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.list_sharp),
              iconSize: 30,
              tooltip: 'Abrir minha lista',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<MinhaLista>(
                  builder: (BuildContext context) {
                    return new Scaffold(
                      appBar: new AppBar(
                        title: const Text('Itens adicionados na lista: '),
                      ),
                      body: const Center(
                        child: Text(
                          'Aqui deveria estar aparecendo a lista com os itens que o usuário adicionou fuck',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                  },
                ),
                );
              },
            ),
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
              onPressed: () {/* ... */},
            ),
            const SizedBox(width: 8),
          ],
        ),
      ],
    ),
    );
  }
}


class MinhaLista extends StatelessWidget {
  final List<String> minhalista;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
    );
  }

  MinhaLista(this.minhalista);
}
///essa classe acho que vou usar pra outra tela
