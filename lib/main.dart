import 'package:flutter/material.dart';
import 'screens/category_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(
          secondary: Colors.amber,
        ),
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(245, 245, 245, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
      ),
      home: const CategoriesScreen(),
    );
  }
}
