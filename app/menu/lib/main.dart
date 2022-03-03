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

class Planetas extends StatelessWidget {
  final List<String> planetas;

  Planetas(this.planetas);

  Widget _buildPlanetaItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/planeta1.jpg'),
          Text(planetas[index], style: TextStyle(color: Colors.purple[200]))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildPlanetaItem,
      itemCount: planetas.length,
    );
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _planetas = [];

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
            child: Column(children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                      color: Theme
                          .of(context)
                          .primaryColor,
                      splashColor: Colors.blueGrey,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          _planetas.add('Saturno');
                        });
                      },
                      child: Text('Saturno'))),
              Expanded(child: Planetas(_planetas))
            ])
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

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: ThemeData(fontFamily: 'RobotoMono').textTheme.headline5,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

/// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}
