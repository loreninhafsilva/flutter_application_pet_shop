// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyPrimeiro extends StatefulWidget {
  List<String> lista = [];
  MyPrimeiro(this.lista, {super.key});

  @override
  State<MyPrimeiro> createState() => _MyPrimeiroState();
}

class _MyPrimeiroState extends State<MyPrimeiro> {
  String musicas1 = " ";
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("dont smile at me", style: TextStyle(fontFamily: "Barbatrick"),),
        backgroundColor: const Color.fromARGB(255, 235, 213, 130),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imagens/fundo1.jpg"),
            fit: BoxFit.cover
          ), // Decoration Image
        ), // BoxDecoration
        child: Center(child: Column (children: [
          Text(musicas1, style: TextStyle(fontFamily: "TS Block Bold"),),
          SizedBox(height: 5,),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 235, 213, 130), // Altere para a cor desejada
            ),
            child: Text("Voltar",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontFamily: "TS Block Bold"),),
          ),
        ]))
    ));
  }
  void mostrar(){
    for(int i=0; i<widget.lista.length; i ++){
      musicas1 = musicas1+ "\n"+ widget.lista[i] ;
    }
  }
}