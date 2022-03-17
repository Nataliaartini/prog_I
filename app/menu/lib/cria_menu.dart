import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu/lista.dart';
import 'package:menu/inicial.dart';

class ItensMenu extends StatelessWidget {

  final String alimento;
  final String descricao;
  final String preco;

  ItensMenu(this.alimento, this.descricao, this.preco);


  @override
  Widget build(BuildContext context) {
    return
      Card(
        child:
        Column(
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
                ElevatedButton(
                  onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ListaMenu();
                    }),
                    ).then((itemAdicionado) => _atualiza(itemAdicionado));
                  },
                  child: Text('Adicionar à minha lista'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.green,
                  ),
                )],
            ),
          ],
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

void _atualiza(MinhaLista itemAdicionado) {
  if (itemAdicionado != null) {
    setState(() {
      widget._itens.add(itemAdicionado); //falta criar esse parametro, tentar achar outra solução pra esse problema
    });
  }
}

