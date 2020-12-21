import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(InicioPage());
}
class InicioPage extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _InicioPageState();
  }
}

class _InicioPageState extends State<InicioPage>{
  String nome = "";
  String senha = "";

  @override
  void initStates(){
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget> [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blueGrey,
                    ]
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Text("NotifyMy",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 60
                      ),
                    ),
                  ),

                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 16,
                          right: 32
                      ),
                      child: Text("Cadastro concluido",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

      Container(
        width: MediaQuery.of(context).size.width/1.5,
        height: 50,
        margin: EdgeInsets.only(top: 400),
        decoration: BoxDecoration(

            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.blueAccent,
              ],
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(50)
            )
          ),
          child: Center(
            child: Text('Continuar para o login'.toUpperCase(),//mudar para botão
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

        ),
          ],
        ),
      ),
    );
  }
}