import 'package:flutter/material.dart';
import 'package:projeto_app/login.dart';
import 'package:projeto_app/texte 2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Cabecalho(),
    );
  }
}

