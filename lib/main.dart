import 'package:flutter/material.dart';
import 'package:projeto_app/login.dart';
import 'package:projeto_app/cabecalho.dart';

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

