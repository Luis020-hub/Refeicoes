import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Recipes',
          style: TextStyle(),
        ),
      ),
      body: const Center(
        child: Text('Recipes by Categories'),
      ),
    );
  }
}
