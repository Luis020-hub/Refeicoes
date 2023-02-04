import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final Color color2;
  final Color color3;

  const Category({
    required this.id,
    required this.title,
    this.color = Colors.white,
    this.color2 = Colors.white,
    this.color3 = Colors.white,
  });
}
