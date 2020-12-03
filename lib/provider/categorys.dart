
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projeto_app/data/dummy_cate.dart';
import 'package:projeto_app/models/category.dart';

class Categorys with ChangeNotifier{
  final Map<String, Category> _items = {...DUMMY_CATE};

  List<Category> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Category byIndex(int i){
    return _items.values.elementAt(i);
  }

  void put(Category category){
      if(category == null) {
        return;
      }

      final id = Random().nextDouble().toString();
      _items.putIfAbsent(id, () => Category(
        id : id,
        name: category.name,
        avatarUrl: category.avatarUrl,
      ));
      notifyListeners();
  }
}