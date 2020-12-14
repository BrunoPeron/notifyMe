import 'dart:io';

import 'package:sqflite/sqflite.dart';

final String tableTodo = 'usuarip';
final String columnId = 'id';
final String columnTitle = 'nome';
final String columnDone = 'email';

class Todo {
  int id;
  String title;
  bool done;



  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnTitle: title,
      columnDone: done == true ? 1 : 0
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Todo();

  Todo.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    title = map[columnTitle];
    done = map[columnDone] == 1;
  }
}

class TodoProvider {
  Database db;



  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute('''
    CREATE TABLE usuario(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      imageUrl TEXT,
      email TEXT,
      senha TEXT)
  ''');
        });
  }

  Future<Todo> insert(Todo todo) async {
    todo.id = await db.insert(tableTodo, todo.toMap());
    return todo;
  }

  Future<Todo> getTodo(int id) async {
    List<Map> maps = await db.query(tableTodo,
        columns: [columnId, columnDone, columnTitle],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return Todo.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await db.delete(tableTodo, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(Todo todo) async {
    return await db.update(tableTodo, todo.toMap(),
        where: '$columnId = ?', whereArgs: [todo.id]);
  }

  Future<Todo> getPerso(query) async {
    List<Map> maps = await db.rawQuery('SELECT nome FROM usuario');
    print(maps);
    // if (maps.length > 0) {
    //   return Todo.fromMap(maps.first);
    // }
    // return null;
  }

  // Future<Database> get db async {
  //   if (_database != null) {
  //     return _database;
  //   }
  //   _database = await init();
  //
  //   return _database;
  // }




  Future close() async => db.close();
}