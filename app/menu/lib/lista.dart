import 'package:menu/cria_menu.dart';
import 'package:menu/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/scroll_view.dart';

///abre a lista
class MinhaLista extends StatefulWidget {

  @override
  _MinhaLista createState()=> _MinhaLista();
}

class _MinhaLista extends State<MinhaLista> {
  final List<ItensMenu> _atualizaLista = [];

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
                  title: const Text('Itens adicionados na lista'),
                  shadowColor: Colors.green,
                ),
                body: ListView.builder(
                          itemCount: _atualizaLista.length,
                          itemBuilder: (context, indice) {
                            final lista = _atualizaLista[indice];
                            return ItensMenu("alimento", "descricao", "preco");
                          },)
              );
            },
          ),
          );
        },
      );
  }
}
