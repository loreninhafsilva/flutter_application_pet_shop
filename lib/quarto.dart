// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyQuarto extends StatefulWidget {
  List<String> lista = [];
  MyQuarto(this.lista, {super.key});

  @override
  State<MyQuarto> createState() => _MyQuartoState();
}

class _MyQuartoState extends State<MyQuarto> {
  String musicas4 = " ";
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("HIT ME HARD AND SOFT", style: TextStyle(fontFamily: "Barbatrick", color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 21, 41, 68),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imagens/fundo4.jpg_large"),
            fit: BoxFit.cover
          ), // Decoration Image
        ), // BoxDecoration
        child: Center(child: Column (children: [
          Text(musicas4, style: TextStyle(fontFamily: "TS Block Bold", color: Colors.white),),
          SizedBox(height: 5,),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 21, 41, 68), // Altere para a cor desejada
            ),
            child: Text("Voltar",style: TextStyle(color: Colors.white, fontFamily: "TS Block Bold"),),
          ),
        ]))
    ));
  }
  void mostrar(){
    for(int i=0; i<widget.lista.length; i ++){
      musicas4 = musicas4+ "\n"+ widget.lista[i] ;
    }
  }
}