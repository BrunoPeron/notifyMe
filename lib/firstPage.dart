import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          Center(
              child: Text('texte')
          ),
        ],
      ),
    );
  }
}








/*import 'package:flutter/cupertino.dart';

import 'package:flutter/services.dart';

void main() {
  runApp(FirstPage());
}
class FirstPage extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _FirstPage();
  }
}

class _FirstPage extends State<FirstPage> {
  @override
  void initStates() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: <Widget> [
              Container()
            ]
          )
        )
    );
  }
}*/