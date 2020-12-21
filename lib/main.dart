import 'package:flutter/material.dart';
import 'package:projeto_app/cabecalho.dart';
import 'package:projeto_app/cadastro.dart';
import 'package:projeto_app/inicio.dart';
import 'package:projeto_app/login.dart';
import 'package:projeto_app/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: LoginPage(),
      routes: {
        // InicioPage.routeName: (context) => InicioPage(),
        Cadastro.routeName: (context) => Cadastro(),
        // Cabecalho.routeName: (context) => Cabecalho(),
        MainPage.routeName: (context) => MainPage()
      },
    );
  }
}
