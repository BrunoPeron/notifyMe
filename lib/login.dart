import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_app/cabecalho.dart';
import 'package:projeto_app/cadastro.dart';

import 'cabecalho_cat.dart';
import 'database/UsuarioDatabase.dart';

class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  String nome = "";
  String senha = "";

  @override
  void initState() {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Colors.blue,
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
                    child: Text(
                      "NotifyMy",
                      style: TextStyle(color: Colors.white, fontSize: 60),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16, right: 32),
                      child: Text(
                        "Login",
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
              height: MediaQuery.of(context).size.width / 1.05,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 60),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 5)
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          hintText: 'E-mail'),
                      onChanged: (text) {
                        nome = text;
                        print("nome: $text");
                      },
                    ),
                  ),

                  //campo de senha
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
                    margin: EdgeInsets.only(top: 12),
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 5)
                        ]),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.grey,
                          ),
                          hintText: 'Password'),
                      onChanged: (text) {
                        senha = text;
                        print("nome: $text");
                      },
                    ),
                  ),

                  //mensagem esqueci a senha
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, right: 74),
                      child: Text(
                        'Esqueceu a Senha?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Spacer(),

                  //botão login
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: IconButton(
                        icon: Text(
                          'Login'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        color: Colors.transparent,
                        onPressed: () async {
                          final db = UsuarioDatabase();
                          bool _usuarios = await db.procurarUsuario(nome, senha);
                          if(_usuarios){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CabecalhoCat()),
                          );
                          } else {
                            void _exibirDialogo() {
                              showAlertDialog1(context);
                            }
                          }
                        },
                      ),
                    ),
                  ),
                  //Botão Cadastro
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
                    margin: EdgeInsets.only(top: 12),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.blueAccent,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: IconButton(
                        icon: Text(
                          'Cadastro'.toUpperCase(), //mudar para botão
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cadastro()),
                          );
                        },
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

showAlertDialog1(BuildContext context) {
  // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {},
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("Promoção Imperdivel"),
    content: Text("Não perca a promoção."),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
