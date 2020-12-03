import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name;
  final String avatarUrl;

  const Category({
    this.id,
    @required this.name,
    @required this.avatarUrl
});
}