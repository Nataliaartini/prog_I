import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu/lista.dart';


class ItensMenu extends StatelessWidget {

  final List<ItensMenu> _atualizaLista = []; //na minha cabeça ta fazendo sentido, salvar a lista aqui pra depois passar pra lista?

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
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<MinhaLista>(
                        builder: (context) {
                          _atualizaLista.add(ItensMenu(this.alimento, this.descricao, this.preco));
                          return Scaffold(
                            appBar: new AppBar(
                              backgroundColor: Colors.green[900],
                              title: const Text('Itens adicionados na lista'),
                              shadowColor: Colors.green,
                            ),
                             body: ListView.builder(
                               itemCount: _atualizaLista.length,
                               itemBuilder: (context, indice) {
                                return ItensMenu(this.alimento, this.descricao,
                                    this.preco);
                              },
                            ),
                          );
                          // return ItensMenu(this.alimento, this.descricao,
                          //     this.preco); //salvar o item na lista
                        },
                      ),
                      );
                    },
                    child: Text('Adicionar à minha lista'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.green,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ))
              ],
            ),
          ],
        ),
      );

//     void _criaTransferencia(BuildContext context) {
//       if (alimento != null && descricao != null) {
//         final adicionouLista = ItemAdicionado(alimento, descricao);
//           }
//         }
//       },
//     }
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



// class MostraItens extends StatelessWidget {
//   final List<ItensMenu> _itensmenu = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder( ///mudei de column para listview para pegar o indice
//       itemCount: _itensmenu.length,
//       itemBuilder: (context, indice) {
//         final ItensMenu = _itensmenu[indice];
//         return ItensMenu; //---- vou ter que passar pro caderno pra pensar num melhor jeito de fazer isso
//       },
//     );
//   }
// }





class MinhaLista extends StatefulWidget {

  final List<ItensMenu> _atualizaLista = [];

  @override
  State<StatefulWidget> createState(){
    return _MinhaLista();
  }
//  _MinhaLista createState()=> _MinhaLista();
}

class _MinhaLista extends State<MinhaLista> {

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
                      itemCount: widget._atualizaLista.length,
                      itemBuilder: (context, indice) {
                        final adicionouLista = widget._atualizaLista[indice];
                        return adicionouLista;
                      },
                    ),
                  );
                }
            ),);
          }
      );
  }

// @override
//   return
//     Column(
//         mainAxisSize: MainAxisSize.min,
//           ListTile(
//             leading: Icon(Icons.brunch_dining, color: Colors.green,),
//             title: Text("alimento"),
//             subtitle: Text("descricao"),
//           ),
//         )
}
