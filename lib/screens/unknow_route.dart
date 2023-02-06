import 'package:flutter/material.dart';

class UnknowRoute extends StatelessWidget {
  const UnknowRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(),
          ),
          onPressed: null,
          child: const Text('Unknow Page, Go Back'),
        ),
      ),
    );
  }
}
