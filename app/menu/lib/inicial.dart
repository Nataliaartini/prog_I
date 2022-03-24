import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu/lista.dart';
import 'package:menu/cria_menu.dart';

class Cantina extends StatelessWidget {
  List<CriaItem> _minhalista = [];
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
          backgroundColor: Colors.green[900],
          shadowColor: Colors.green,
          actions: [
            MinhaLista(atualizaLista: _minhalista,),
          ],
        ),
        body: SingleChildScrollView(
          child: ListaMenu(_minhalista),
        ),
      ),
    );
  }
}
