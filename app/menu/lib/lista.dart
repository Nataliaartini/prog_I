import 'package:menu/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/scroll_view.dart';

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
                    leading: Icon(Icons.brunch_dining, color: Colors.green),
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
