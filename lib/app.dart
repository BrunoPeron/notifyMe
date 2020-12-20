import 'package:flutter/material.dart';
import 'package:projeto_app/main_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Usuario Database'),
        ),
        body: MainPage(),
      ),
    );
  }
}
