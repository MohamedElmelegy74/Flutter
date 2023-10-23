import 'package:flutter/material.dart';
import 'package:language_app/Screens/home_screen.dart';

void main() {
  runApp(LanguageApp());
}

class LanguageApp extends StatelessWidget {
  const LanguageApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

