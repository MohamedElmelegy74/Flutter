import 'package:flutter/material.dart';
import 'package:language_app/components/category_items.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToukoApp'),
        backgroundColor: Color(0xff045E77),
      ),
      backgroundColor: Color(0xff265B6A),
      body: Column(
        children: [
          ///Numbers Screen
          Category('Numbers', Color(0xff60C4E0), () {}),

          ///Family Members Screen
          Category('Family Members', Color(0xff3B8296), () {}),

          ///Colors Screen
          Category('Colors', Color(0xff14343D), () {}),

          ///Phases Screen
          Category('Phases', Color(0xff050E11), () {})
        ],
      ),
    );
  }
}
