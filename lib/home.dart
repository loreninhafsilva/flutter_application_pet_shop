import 'package:flutter/material.dart';
import 'package:flutter_application_pet_shop/first.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Billie Elish Álbuns", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 25, 219, 25)  ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imagens/fundo.jpg"),
            fit: BoxFit.cover
          ), // Decoration Image
        ), // BoxDecoration
        child: Column (children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
            child: Image.asset("assets/imagens/first.png", width: 150, height: 150),
            onTap:
              () {
                Navigator.push(context, MaterialPageRoute (builder: (context)=> MyFirst()));
              },
              ),
              ),
             MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
            child: Image.asset("assets/imagens/second.png", width: 150, height: 150),
            onTap:
              () {
                Navigator.push(context, MaterialPageRoute (builder: (context)=> MyFirst()));
              },
              ),
              ), ],),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
            child: Image.asset("assets/imagens/terceiro.jpg", width: 150, height: 150),
            onTap:
              () {
                Navigator.push(context, MaterialPageRoute (builder: (context)=> MyFirst()));
              },
              ),
              ),],)
        ]))
    );
  }
}