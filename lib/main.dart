import 'package:flutter/material.dart';
import 'package:projeto_app/views/category_list.dart';
import 'package:provider/provider.dart';
import 'package:projeto_app/provider/categorys.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Categorys(),
        )
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CategoryList(),
      ),
    );
  }
}

