import 'package:flutter/material.dart';
import 'package:language_app/components/itmes.dart';
import 'package:language_app/models/number_class.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  Number one = const Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff045E77),
      ),
      body: ListView(
        children: [
          Items(number: one),
        
        ],
      ),
    );
  }
}



