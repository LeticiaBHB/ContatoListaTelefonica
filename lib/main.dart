import 'package:contatoslista/HomeState.dart';
import 'package:flutter/material.dart';
import 'Adicionar.dart';
import 'Buscar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/Adicionar': (context) => Adicionar(),
        '/buscar': (context) => Buscar(),
      },
    );
  }
}
