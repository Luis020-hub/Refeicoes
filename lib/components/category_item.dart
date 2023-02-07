import 'package:flutter/material.dart';
import 'package:refeicoes/models/category.dart';

import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.categoriesMeals,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
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
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
