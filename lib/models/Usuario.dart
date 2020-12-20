import 'dart:math';
import 'package:meta/meta.dart';
class Usuario {
  @required
  final int id;
  @required
  final String nome;
  @required
  final String email;
  @required
  final String senha;
  @required
  final String imageUrl;

  Usuario({this.id, this.nome, this.email, this.senha, this.imageUrl});

  Usuario.random()
      : this.id = null,
        this.nome = 'nome ',
        this.email = 'email ',
        this.senha = 'senha a',
        this.imageUrl = 'image ';

  Usuario.fromDb(Map<String, dynamic> map)
      : id = map['id'],
        nome = map['nome'],
        email = map['email'],
        senha = map['senha'],
        imageUrl = map['imageUrl'];

  Usuario.insert(nome, email, senha, imageUrl)
      : this.id = null,
        this.nome = nome,
        this.email = email,
        this.senha = senha,
        this.imageUrl = imageUrl;

  Map<String, dynamic> toMapForDb() {
    var map = Map<String, dynamic>();
    map['id'] = id;
    map['nome'] = nome;
    map['email'] = email;
    map['senha'] = senha;
    map['imageUrl'] = imageUrl;
    return map;
  }
}

