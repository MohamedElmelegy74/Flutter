import 'package:flutter/material.dart';
import 'package:language_app/Screens/numbers_screen.dart';
import 'package:language_app/components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToukoApp'),
        backgroundColor: const Color(0xff045E77),
      ),
      backgroundColor: const Color(0xff265B6A),
      body: Column(
        children: [
          ///Numbers Screen
          Category(
              text: 'Numbers',
              color: const Color(0xff60C4E0),
              onTop: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  NumbersPage();
                }));
              }),

          ///Family Members Screen
          Category(
              text: 'Family Members',
              color: const Color(0xff3B8296),
              onTop: () {}),

          ///Colors Screen
          Category(text: 'Colors',
          color: const Color(0xff14343D),
          onTop: () {}),

          ///Phases Screen
          Category(text: 'Phases',
          color: const Color(0xff050E11),
          onTop: () {})
        ],
      ),
    );
  }
}
