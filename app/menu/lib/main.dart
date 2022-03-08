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
  List<String> _lista = [];

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
                Navigator.push(context, MaterialPageRoute<Lista>(
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
          child: Column(
            children: [
                  Card(
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.brunch_dining, color: Colors.green,),
                        title: Text('Coxinha'), textColor: Colors.black,
                        subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 2),
                          child: Icon(
                            CupertinoIcons.money_dollar_circle,
                            color: Colors.green[800],
                            size: 24.0,
                            textDirection: TextDirection.ltr,),
                        ),
                        Expanded(
                          child: Text(' 5,00', textAlign: TextAlign.left),
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
              ),
            Card(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.brunch_dining, color: Colors.green,),
                      title: Text('Sanduíche de frango'), textColor: Colors.black,
                      subtitle: Text('Carne de frango, maionese, alface e tomate.'),
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
                        child: Text(' 3,00', textAlign: TextAlign.left),
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
            ),
            Card(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.brunch_dining, color: Colors.green,),
                      title: Text('Sanduíche de salame'), textColor: Colors.black,
                      subtitle: Text('Salame, queijo, presunto, maionese e tomate.'),
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
                        child: Text(' 3,50', textAlign: TextAlign.left),
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
            ),
            Card(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.brunch_dining, color: Colors.green,),
                      title: Text('Mini pizza'), textColor: Colors.black,
                      subtitle: Text('Calabresa, musarela, molho de tomate.'),
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
                        child: Text(' 7,00', textAlign: TextAlign.left),
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
            ),
            Card(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.brunch_dining, color: Colors.green,),
                      title: Text('Pão de queijo'), textColor: Colors.black,
                      subtitle: Text('temperado com orégano ou tradicional.'),
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
                        child: Text(' 4,00', textAlign: TextAlign.left),
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
            ),
            Card(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.brunch_dining, color: Colors.green,),
                      title: Text('Paçoca'), textColor: Colors.black,
                      subtitle: Text('paçoquita.'),
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
                        child: Text(' 0,75', textAlign: TextAlign.left),
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
                  ),Card(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.brunch_dining, color: Colors.green,),
                        title: Text('Risoles de carne'), textColor: Colors.black,
                        subtitle: Text('Carne de gado.'),
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
                          child: Text(' 5,00', textAlign: TextAlign.left),
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
              ),
            Card(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.brunch_dining, color: Colors.green,),
                      title: Text('Risoles de frango'), textColor: Colors.black,
                      subtitle: Text('Carne de frango.'),
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
                        child: Text(' 5,00', textAlign: TextAlign.left),
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
            ),
            Card(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.brunch_dining, color: Colors.green,),
                      title: Text('Risoles de queijo'), textColor: Colors.black,
                      subtitle: Text('queijo Cheddar e musarela.'),
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
                        child: Text(' 5,00', textAlign: TextAlign.left),
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
            ),
            Card(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.brunch_dining, color: Colors.green,),
                  title: Text('Rocambole de frango'), textColor: Colors.black,
                  subtitle: Text('Carne de frango com catupiry.'),
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
                    child: Text(' 8,00', textAlign: TextAlign.left),
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
          ),
            Card(
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.brunch_dining, color: Colors.green,),
                  title: Text('Coxinha'), textColor: Colors.black,
                  subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
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
                    child: Text(' 5,00', textAlign: TextAlign.left),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class Menu extends StatelessWidget {
//   final List<String> alimento;
//   final List<String> preco;
//   final List<String> descricao;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(8),
//     );
//   }
//
//   Menu(this.alimento, this.preco, this.descricao);
// }


class Lista extends StatelessWidget {
  final List<String> lista;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
    );
  }

  Lista(this.lista);
}

// O construtor ListView.separated usa dois IndexedWidgetBuilders: o itemBuilder cria itens filhos sob demanda,
// e o separatorBuilder também cria filhos separadores que aparecem entre os itens filhos. Esse construtor é
// apropriado para exibições de lista com um número fixo de filhos.

