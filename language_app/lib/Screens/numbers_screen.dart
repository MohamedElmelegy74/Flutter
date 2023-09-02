import 'package:flutter/material.dart';
import 'package:language_app/components/numbers_items.dart';
import 'package:language_app/models/number_class.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'One'),
    Number(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two'),
    Number(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three'),
    Number(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four'),
    Number(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five'),
    Number(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six'),
    Number(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Shichi',
        enName: 'Seven'),
    Number(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'Eight'),
    Number(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyuu',
        enName: 'Nine'),
    Number(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Juu',
        enName: 'Ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff045E77),
      ),
      body: ListView(
        children: [
        Items(number:numbers[0]),
        Items(number:numbers[1]),
        Items(number:numbers[2]),
        Items(number:numbers[3]),
        Items(number:numbers[4]),
        Items(number:numbers[5]),
        Items(number:numbers[6]),
        Items(number:numbers[7]),
        Items(number:numbers[8]),
        Items(number:numbers[9]),
        ],
      ),
    );
  }
}
