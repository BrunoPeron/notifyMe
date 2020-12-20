import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_app/firstPage.dart';

void main() {
  runApp(Cabecalho());
}
class Cabecalho extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _Cabecalho();
  }
}

class _Cabecalho extends State<Cabecalho>{
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
              ),
              child: Column(
                children: <Widget>[
                  Align(
                    child: Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Spacer(),
                          Align(
                            //alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.only(left: 10, right: 20),
                              child: Row(
                                children:<Widget> [
                                  Icon(Icons.menu, size: 40),
                                ],
                              ),
                            ),
                          ),

                          Spacer(),
                          Align(
                            child: Container(
                              //padding: EdgeInsets.only(right: 20),
                              width: MediaQuery.of(context).size.width/1.5,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 5
                                  )
                                ],
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  /*icon: Icon(Icons.search,
                              color: Colors.grey,
                            ),*/
                                    hintText: 'Pesquisar'
                                ),
                              ),
                            ),
                          ),

                          Align(
                            //alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                children:<Widget> [
                                  Icon(Icons.search, size: 40),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),



                  Align(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget> [
                          Align(
                            child: Container(
                              margin: EdgeInsets.only(top: 80, left: 5),
                              width: MediaQuery.of(context).size.width/2.2,
                              height: 40,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.blueAccent,
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text('Botão 1'.toUpperCase(),//mudar para botão
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              margin: EdgeInsets.only(top: 80, left: 10),
                              width: MediaQuery.of(context).size.width/2.2,
                              height: 40,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.blueAccent,
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text('Botão 2'.toUpperCase(),//mudar para botão
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),


            ),

            //NOVO CONTAINER AQUI!
            Container(
              height: MediaQuery.of(context).size.width/1,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 30),

              child: Column(
                children: <Widget> [
                  Center(child: FirstTab(),)
                  //Center(child: FirstTab(),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}