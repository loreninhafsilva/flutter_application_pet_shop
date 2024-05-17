import 'package:flutter/material.dart';
import 'package:flutter_application_pet_shop/primeiro.dart';
import 'package:flutter_application_pet_shop/quarto.dart';
import 'package:flutter_application_pet_shop/segundo.dart';
import 'package:flutter_application_pet_shop/terceiro.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> musicas1 = ["1. COPYCAT","2. my boy","3. party favor","4. ocean eyes","5. &burn","6. idontwannabeyouanymore","7. watch","8. bellyache","9. hostage"];
  List<String> musicas2 = ["1. !!!!!!!","2. bad guy","3. xanny","4. you should see me in a crown","5. all the good girls go to hell","6. wish you are gay","7. when the party's over ","8. 8","9. my strange addiction", "10. bury a friend", "11. ilomilo", "12. listen before i go", "13. i love you", "14. goodbye"];
  List<String> musicas3 = ["1. Getting Older","2. I Didn't Change My Number","3. Billie Bossa Nova","4. my future","5. Oxytocin","6. GOLDWING","7. Lost Cause","8. Halley's Comet","9. Not My Responsibility", "10. OverHeated", "11. Everybody Dies", "12. Your Power", "13. NDA", "14. Therefore I Am", "15. Happier Than Ever", "16. Male Fantasy"];
  List<String> musicas4 = ["1. SKINNY","2. LUNCH","3. CHIHIRO","4. BIRDS OF A FEATHER","5. WILDFLOWER","6. THE GREATEST","7. L'AMOUR DE MA VIE","8. THE DINER","9. BITTERSUITE", "10. BLUE"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Billie Elish Álbuns", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontFamily: "Barbatrick"),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0)  ),
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
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
            child: Image.asset("assets/imagens/first.png", width: 150, height: 150),
            onTap:
              () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyPrimeiro(musicas1)));
              },
              ),
              ),
            SizedBox(width: 10,),
             MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
            child: Image.asset("assets/imagens/second.png", width: 150, height: 150),
            onTap:
              () {
                Navigator.push(context, MaterialPageRoute (builder: (context)=> MySegundo(musicas2)));
              },
              ),
              ), 
              ],
              ),
              SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
            child: Image.asset("assets/imagens/terceiro.jpg", width: 150, height: 150),
            onTap:
              () {
                Navigator.push(context, MaterialPageRoute (builder: (context)=> MyTerceiro(musicas3)));
              },
              ),
              ),
              SizedBox(width: 10,),
              MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
            child: Image.asset("assets/imagens/quarto.jpg", width: 150, height: 150),
            onTap:
              () {
                Navigator.push(context, MaterialPageRoute (builder: (context)=> MyQuarto(musicas4)));
              },
              ),
              ),
              ],
              )
        ]))
    );
  }
}