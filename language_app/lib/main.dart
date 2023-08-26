import 'package:flutter/material.dart';
import 'package:language_app/Screens/home_screen.dart';

void main() {
  runApp(LanguageApp());
}

class LanguageApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
