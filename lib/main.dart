import 'package:flutter/material.dart';
import 'package:language_learning/screens/home_screen.dart';


void main() {
  runApp(const Language_learning_app());
}

class Language_learning_app extends StatelessWidget {
  const Language_learning_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
