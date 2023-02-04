import 'package:flutter/material.dart';
import 'package:refeicoes/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        gradient: LinearGradient(
          colors: [
            category.color.withOpacity(1),
            category.color,
            category.color2.withOpacity(1),
            category.color2,
            category.color3.withOpacity(1),
            category.color3,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(
        category.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black87
        ),
      ),
    );
  }
}
