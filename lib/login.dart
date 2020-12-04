import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(LoginPage());
}
class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage>{
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
                      Colors.blueAccent,
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
                    child: Text("Nome",
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
                      child: Text("Login",
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

            //Campo de email
            Container(
              height: MediaQuery.of(context).size.width/1.05,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 60),

              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 50,
                    padding: EdgeInsets.only(
                      top: 4, left: 16, right: 16, bottom: 4
                    ),
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
                        icon: Icon(Icons.email,
                        color: Colors.grey,
                        ),
                          hintText: 'E-mail'
                      ),
                    ),
                  ),

                  //campo de senha
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 50,
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(
                        top: 4, left: 16, right: 16, bottom: 4
                    ),
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
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.vpn_key,
                            color: Colors.grey,
                          ),
                          hintText: 'Password'
                      ),
                    ),
                  ),

                  //mensagem esqueci a senha
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 16, right: 74
                      ),
                      child: Text('Esqueceu a Senha?',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  Spacer(),

                  //botão login
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 50,
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
                      child: Text('Login'.toUpperCase(),//mudar para botão
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                  //Botão Cadastro
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 50,
                    margin: EdgeInsets.only(top: 12),
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
                      child: Text('Cadastre-se'.toUpperCase(),//mudar para botão
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}