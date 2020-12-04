import 'package:flutter/material.dart';
import 'package:projeto_app/database/UsuarioDatabase.dart';
import 'package:projeto_app/models/Usuario.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  final db = UsuarioDatabase();
  List<Usuario> usuario = [];

  @override
  void initState() {
    super.initState();
    setupList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          _buildAddButton(),
          _buildCarList(usuario),
        ],
      ),
    );
  }

  Widget _buildCarList(List<Usuario> userlist) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: userlist.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('Id'),
                    Text(userlist[index].id.toString()),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('nome'),
                    Text(userlist[index].nome),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('email'),
                    Text(userlist[index].email.toString()),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('senha'),
                    Text(userlist[index].senha.toString()),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('imageUrl'),
                    Text(userlist[index].imageUrl.toString()),
                  ],
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    onDelete(userlist[index].id);
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _buildAddButton() {
    return RaisedButton(
      child: Text('Add Car'),
      onPressed: () {
        onPressed();
      },
    );
  }

  onDelete(int id) async {
    await db.removeUsuario(id);
    db.fetchAll().then((usuarioDb) => usuario = usuarioDb);
    setState(() {});
  }

  void onPressed() async {
    var usuario = new Usuario.random();
    await db.addUsuario(usuario);
    setupList();
  }

  void setupList() async {
    var _usuarios = await db.fetchAll();
    print(_usuarios);

    setState(() {
      usuario = _usuarios;
    });
  }
}
