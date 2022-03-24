import 'package:menu/cria_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/scroll_view.dart';


class MinhaLista extends StatelessWidget {

  const MinhaLista({Key? key, required this.atualizaLista}) : super(key: key);
  final List<CriaItem> atualizaLista;

  @override
  Widget build(BuildContext context) {
    return
      IconButton(
          icon: const Icon(Icons.list_sharp),
          iconSize: 30,
          tooltip: 'Abrir minha lista',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<MinhaLista>(
                builder: (BuildContext context)
                {
                  return Scaffold(
                    appBar: new AppBar(
                      backgroundColor: Colors.green[900],
                      title: const Text('Itens adicionados na lista'),
                      shadowColor: Colors.green,
                    ),
                    body: ListView.builder(
                      itemCount: atualizaLista.length,
                      itemBuilder: (context, indice) {
                        return atualizaLista[indice];
                      },
                    ),
                  );
                }
            ),);
          }
      );

  }
}
