import 'package:flutter/material.dart';
import 'package:projeto_app/components/category_tile.dart';
import 'package:projeto_app/data/dummy_cate.dart';
import 'package:projeto_app/models/category.dart';
import 'package:projeto_app/provider/categorys.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final Categorys categorys = Provider.of(context);

      return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Categorias'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add),
                onPressed: (){
                  categorys.put(Category(
                    name: 'Teste',
                    avatarUrl: 'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_960_720.png'
                  ));
                },
              ),
          ],
        ),
        body: ListView.builder(
            itemCount: categorys.count,
            itemBuilder: (ctx, i) => CategoryTile(categorys.byIndex(i))
        ),
      );
  }
}