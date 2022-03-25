import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CriaItem extends StatelessWidget {

  final List<CriaItem> atualizaLista;
  final alimento;
  final descricao;
  final preco;

  const CriaItem(this.alimento, this.descricao, this.preco, this.atualizaLista, {Key? key}) : super(key: key);

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
                      onPressed: () {
                        atualizaLista.add(CriaItem(alimento, descricao, preco, atualizaLista));
                      },
                      child: Text('Adicionar à minha lista'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.green,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                  )
                ],
              ),
            ],
          ),
        );
  }
}


class ListaMenu extends StatelessWidget {

  final List<CriaItem> atualizaLista;
  const ListaMenu(this.atualizaLista);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CriaItem("Coxinha", "Carne de frango com catupiry ou palmito com catupiry.", "5,00", atualizaLista),
        CriaItem("Sanduíche de frango", "Carne de frango, maionese, alface e tomate.", "4,00",atualizaLista),
        CriaItem("Sanduíche de salame", "Salame, queijo, presunto, maionese e tomate.", "4,00", atualizaLista),
        CriaItem("Mini pizza", "Calabresa, musarela, molho de tomate.", "7,00", atualizaLista),
        CriaItem("Pão de queijo", "temperado com orégano ou tradicional.", "2,00", atualizaLista),
        CriaItem("Paçoca", "paçoquita", "0,75", atualizaLista),
        CriaItem("Risoles de carne", "Carne de gado.", "5,00", atualizaLista),
        CriaItem("Risoles de frango", "Carne de frango.", "5,00", atualizaLista),
        CriaItem("Risoles de queijo", "Queijo Cheddar e musarela", "5,00", atualizaLista),
        CriaItem("Risoles de brócolis", "Molho de brócolis crocante", "5,00", atualizaLista),
        CriaItem("Rocambole de frango", "Carne de frango com catupiry.", "8,00", atualizaLista),
      ],
    );
  }
}
