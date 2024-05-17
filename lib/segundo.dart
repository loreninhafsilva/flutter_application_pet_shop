// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MySegundo extends StatefulWidget {
  List<String> lista = [];
  MySegundo(this.lista, {super.key});

  @override
  State<MySegundo> createState() => _MySegundoState();
}

class _MySegundoState extends State<MySegundo> {
  String musicas2 = " ";
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("When We All Fall Asleep, Where Do We Go?", style: TextStyle(fontFamily: "Barbatrick", color: Colors.white, fontSize: 13),),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imagens/fundo2.jpg"),
            fit: BoxFit.cover
          ), // Decoration Image
        ), // BoxDecoration
        child:Center(child: Column (children: [
          SizedBox(height: 5,),
          Text(musicas2, style: TextStyle(fontFamily: "TS Block Bold",color: Colors.white),),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 0, 0, 0), // Altere para a cor desejada
            ),
            child: Text("Voltar",style: TextStyle(color: Colors.white, fontFamily: "TS Block Bold"),),
          ),
        ]))
    ));
  }
  void mostrar(){
    for(int i=0; i<widget.lista.length; i ++){
      musicas2 = musicas2+ "\n"+ widget.lista[i] ;
    }
  }
}