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

    return Container(
        width: double.infinity,
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
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  //elevation: 0.0,
                  //backgroundColor: Colors.transparent,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(60),
                    child: Container(
                      color: Colors.transparent,
                      child: SafeArea(
                        child: Column(
                          children: <Widget>[
                            Align(
                              child: Row(
                                children:<Widget> [
                                  Align(
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
                            //Spacer(),
                            TabBar(
                                indicator: UnderlineTabIndicator(
                                    borderSide: BorderSide(
                                        color: Color(0xffff0863), width: 4.0),
                                    insets: EdgeInsets.fromLTRB(
                                        40.0, 20.0, 40.0, 0)),
                                indicatorWeight: 15,
                                indicatorSize: TabBarIndicatorSize.label,
                                labelColor: Color(0xff2d386b),
                                labelStyle: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 1.3,
                                    fontWeight: FontWeight.w500),
                                unselectedLabelColor: Colors.black26,
                                tabs: [
                                  Tab(
                                    child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        width: MediaQuery.of(context).size.width/2.2,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.green,
                                              Colors.greenAccent,
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)
                                          ),
                                        ),

                                        child: Center(
                                          child: Text('Botão 1'.toUpperCase(),//mudar para botão
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                  Tab(
                                    child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        width: MediaQuery.of(context).size.width/2.2,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.green,
                                              Colors.greenAccent,
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)
                                          ),
                                        ),

                                        child: Center(
                                          child: Text('Botão 2'.toUpperCase(),//mudar para botão
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                ]
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                body: TabBarView(
                  children: <Widget>[
                    Center(
                      child: FirstTab(),
                    ),
                    Center(
                      //child: SecondTab(),
                    ),
                  ],
                )
            )
        )
    );
  }
}