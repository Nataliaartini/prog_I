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
        appBar: AppBar(
          title: const Text("Cardápio da Semana"),
          backgroundColor: Colors.lightGreen[900],
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.list_sharp),
              iconSize: 30,
              tooltip: 'Abrir minha lista',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Minha lista'),
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
                        leading: Icon(Icons.brunch_dining),
                        title: Text('Coxinha'),
                        subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          CupertinoIcons.money_dollar_circle,
                          color: Colors.green[800],
                          size: 24.0,),
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
                          leading: Icon(Icons.brunch_dining),
                          title: Text('Coxinha'),
                          subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            // Icon(
                            //   CupertinoIcons.money_dollar_circle,
                            //   color: Colors.green[800],
                            //   size: 24.0,),
                            Expanded(
                              child: Text('RS 5,00', textAlign: TextAlign.right),
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
                          leading: Icon(Icons.brunch_dining),
                          title: Text('Coxinha'),
                          subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
                        ),
                        Wrap(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              CupertinoIcons.money_dollar_circle,
                              color: Colors.green[800],
                              size: 24.0,),
                            Expanded(
                              child: Text('RS 5,00', textAlign: TextAlign.right),
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
                          leading: Icon(Icons.brunch_dining),
                          title: Text('Coxinha'),
                          subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
                        ),
                        Wrap(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              CupertinoIcons.money_dollar_circle,
                              color: Colors.green[800],
                              size: 24.0,),
                            Expanded(
                              child: Text('RS 5,00', textAlign: TextAlign.right),
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
                          leading: Icon(Icons.brunch_dining),
                          title: Text('Coxinha'),
                          subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
                        ),
                        Wrap(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              CupertinoIcons.money_dollar_circle,
                              color: Colors.green[800],
                              size: 24.0,),
                            Expanded(
                              child: Text('RS 5,00', textAlign: TextAlign.right),
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
                      leading: Icon(Icons.brunch_dining),
                      title: Text('Coxinha'),
                      subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
                    ),
                    Wrap(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          CupertinoIcons.money_dollar_circle,
                          color: Colors.green[800],
                          size: 24.0,),
                        Expanded(
                          child: Text('RS 5,00', textAlign: TextAlign.right),
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
                      leading: Icon(Icons.brunch_dining),
                      title: Text('Coxinha'),
                      subtitle: Text('Carne de frango com catupiry ou palmito com catupiry.'),
                    ),
                    Wrap(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          CupertinoIcons.money_dollar_circle,
                          color: Colors.green[800],
                          size: 24.0,),
                        Expanded(
                          child: Text('RS 5,00', textAlign: TextAlign.right),
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
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){
        //   //ADD CODE PRESSED BUTTON
        //   },
        //   backgroundColor: Colors.black,
        //   tooltip: "Adicionar item na lista",
        //   elevation: 12,
        //   foregroundColor: Colors.green[700],
        //
        //   child: const Icon(Icons.add),
        // ),
        //drawer: Drawer(),
      ),
    );

  }
}
///escolher o mesmo display para as colums de preco e lista


// O construtor ListView.separated usa dois IndexedWidgetBuilders: o itemBuilder cria itens filhos sob demanda,
// e o separatorBuilder também cria filhos separadores que aparecem entre os itens filhos. Esse construtor é
// apropriado para exibições de lista com um número fixo de filhos.

