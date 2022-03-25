import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu/lista.dart';
import 'package:menu/cria_menu.dart';

class Cantina extends StatelessWidget {

  List<CriaItem> _minhalista = [];

  @override

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
