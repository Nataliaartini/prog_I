import 'package:flutter/material.dart';

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

class Lista extends StatelessWidget {
  final List<String> lista;
  Lista(this.lista);
}


class _MyAppState extends State<MyApp> {
  List<String> _lista = [];

  ///statefulWidget para componentes com estado que sofrem alteração em tempo de execução
  ///e statelessWidget para conteúdo estático, sem estado ou sem alteração

  @override

  ///possui estado e sobrescreve método build em statelessWidget (sem estado)
  Widget build(BuildContext context) {
    const title = 'Cardápio Cantina UFFS';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cardápio da Semana"),
          backgroundColor: Colors.lightGreen[900],
        ),
        body: Card(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
            const ListTile(
              leading: Icon(Icons.brunch_dining),
              title: Text('Coxinha'),
              subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Text('RS 5,00', textAlign: TextAlign.right),
            ),
              const SizedBox(width: 8),
              TextButton(
                 child: const Text('Adicionar à minha lista'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          //ADD CODE PRESSED BUTTON
          },
          backgroundColor: Colors.black,
          tooltip: "Adicionar item na lista",
          elevation: 12,
          foregroundColor: Colors.green[700],

          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

// O construtor ListView.separated usa dois IndexedWidgetBuilders: o itemBuilder cria itens filhos sob demanda,
// e o separatorBuilder também cria filhos separadores que aparecem entre os itens filhos. Esse construtor é
// apropriado para exibições de lista com um número fixo de filhos.

