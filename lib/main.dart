import 'package:flutter/material.dart';
import 'package:flutter_application_pet_shop/primeiro.dart';
import 'package:flutter_application_pet_shop/home.dart';
import 'package:flutter_application_pet_shop/quarto.dart';
import 'package:flutter_application_pet_shop/segundo.dart';
import 'package:flutter_application_pet_shop/terceiro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes:{
        '/': (context) => MyHome(),
        '/primeiro': (context)=> MyPrimeiro([]),
        '/segundo': (context)=> MySegundo([]),
        '/terceiro': (context)=> MyTerceiro([]),
        '/quarto': (context)=> MyQuarto([]),
      }
    );
  }
}

