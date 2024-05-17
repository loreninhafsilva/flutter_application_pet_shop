// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyTerceiro extends StatefulWidget {
  List<String> lista = [];
  MyTerceiro(this.lista, {super.key});

  @override
  State<MyTerceiro> createState() => _MyTerceiroState();
}

class _MyTerceiroState extends State<MyTerceiro> {
  String musicas3 = " ";
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Happier Than Ever", style: TextStyle( color: Colors.white, fontFamily: "Barbatrick"),),
        backgroundColor: const Color.fromARGB(255, 172, 143, 111),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imagens/fundo3.jpg"),
            fit: BoxFit.cover
          ), // Decoration Image
        ), // BoxDecoration
        child: Center(child: Column (children: [
          Text(musicas3, style: TextStyle(fontFamily: "TS Block Bold",color: Colors.white),),
          SizedBox(height: 5,),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 172, 143, 111), // Altere para a cor desejada
            ),
            child: Text("Voltar",style: TextStyle(color: Colors.white, fontFamily: "TS Block Bold"),),
          ),

        ]))
    ));
  }
  void mostrar(){
    for(int i=0; i<widget.lista.length; i ++){
      musicas3 = musicas3+ "\n"+ widget.lista[i] ;
    }
  }
}