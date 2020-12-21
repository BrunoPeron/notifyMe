import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'database/UsuarioDatabase.dart';
import 'models/Usuario.dart';

class Cadastro extends StatefulWidget {
  static const routeName = '/cadastro';
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final db = UsuarioDatabase();
  String nome = "";
  String email = "";
  String senha = "";
  String senhaRep = "";
  String imageUrl = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blueGrey,
                    ]),
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
                      style: TextStyle(color: Colors.black, fontSize: 60),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16, right: 32),
                      child: Text(
                        "Cadastro",
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

            //NOVO CONTAINER AQUI!
            Container(
              height: MediaQuery.of(context).size.width / 0.8,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 30),
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
                      onChanged: (text) {
                        nome = text;
                        print("nome: $text");
                      },
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          hintText: 'Nome'),
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
                      onChanged: (text) {
                        email = text;
                        print("email: $text");
                      },
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          hintText: 'E-mail'),
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
                      onChanged: (text) {
                        senha = text;
                        print("senha: $text");
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.grey,
                          ),
                          hintText: 'Password'),
                    ),
                  ),

                  //campo de confirmar senha
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
                      onChanged: (text) {
                        senhaRep = text;
                        print("rep senha: $text");
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.grey,
                          ),
                          hintText: 'Password'),
                    ),
                  ),

                  //campo de URL
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
                      onChanged: (text) {
                        imageUrl = text;
                        print("rep senha: $text");
                      },
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.image,
                            color: Colors.grey,
                          ),
                          hintText: 'URL'),
                    ),
                  ),

                  //botão login
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
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
                          onPressed();
                          // runApp(LoginPage());
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

  void onPressed() async {
    var usuario = new Usuario.insert(nome, email, senha, imageUrl);
    await db.addUsuario(usuario);
  }
}
