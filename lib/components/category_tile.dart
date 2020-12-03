import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_app/models/category.dart';

class CategoryTile extends StatelessWidget{
  final Category category;

  const CategoryTile(this.category);
  @override
  Widget build(BuildContext context) {
    final avatar = category.avatarUrl == null || category.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person),)
        : CircleAvatar(backgroundImage: NetworkImage(category.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(category.name),
      //
      trailing: Container(
        width: 100,
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.edit),
              onPressed: (){}
              ),
          IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: (){}
          )
        ],
      ),
      )
    );
  }
}