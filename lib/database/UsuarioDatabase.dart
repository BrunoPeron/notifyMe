import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:projeto_app/models/Usuario.dart';
import 'dart:async';
import 'package:path/path.dart';

class UsuarioDatabase {
  static final UsuarioDatabase _instance = UsuarioDatabase._();
  static Database _database;

  UsuarioDatabase._();

  factory UsuarioDatabase() {
    return _instance;
  }

  Future<Database> get db async {
    if (_database != null) {
      return _database;
    }
    _database = await init();

    return _database;
  }

  Future<Database> init() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String dbPath = join(directory.path, 'database.db');
    var database = openDatabase(dbPath, version: 1, onCreate: _onCreate, onUpgrade: _onUpgrade);
    
    return database;
  }

  void _onCreate(Database db, int version) {
    db.execute('''
    CREATE TABLE usuario(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      imageUrl TEXT,
      email TEXT,
      senha TEXT)
  ''');
    print("Database was created!");
  }

  void _onUpgrade(Database db, int oldVersion, int newVersion) {
    // Run migration according database versions
  }

  Future<int> addUsuario(Usuario usuario) async {
    var client = await db;
    return client.insert('usuario', usuario.toMapForDb(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<Usuario> fetchUsuario(int id) async {
    var client = await db;
    final Future<List<Map<String, dynamic>>> futureMaps = client.query('usuario', where: 'id = ?', whereArgs: [id]);
    var maps = await futureMaps;

    if (maps.length != 0) {
      return Usuario.fromDb(maps.first);
    }

    return null;
  }


  Future<bool> procurarUsuario (String nome, String senha) async {
    var client = await db;
    final Future<List<Map<String, dynamic>>> futureMaps = client.query('usuario', where: 'nome = ? and senha = ?', whereArgs: [nome, senha]);
    var maps = await futureMaps;
    if (maps.length != 0) {
      var usuario = Usuario.fromDb(maps.first);
      return usuario.nome != null;
    }
    return false;
  }

  Future<List<Usuario>> fetchAll() async {
    var client = await db;
    var res = await client.query('usuario');

    if (res.isNotEmpty) {
      var usuarios = res.map((usuarioMap) => Usuario.fromDb(usuarioMap)).toList();
      return usuarios;
    }
    return [];
  }

  Future<int> updateUsuario(Usuario newUsuario) async {
    var client = await db;
    return client.update('usuario', newUsuario.toMapForDb(),
        where: 'id = ?', whereArgs: [newUsuario.id], conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> removeUsuario(int id) async {
    var client = await db;
    return client.delete('usuario', where: 'id = ?', whereArgs: [id]);
  }

  Future closeDb() async {
    var client = await db;
    client.close();
  }
}

