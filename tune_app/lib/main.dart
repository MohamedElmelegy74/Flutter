import 'package:flutter/material.dart';
import 'package:tune_app/screens/tune_screen.dart';

void main() {
  runApp(const TuneApp());
}
  const TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: TuneScreen(),
    );
  }
}
