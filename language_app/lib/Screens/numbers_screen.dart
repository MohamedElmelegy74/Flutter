import 'package:flutter/material.dart';
import 'package:language_app/components/items.dart';
import 'package:language_app/models/items_class.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  final List<ItemsModel> numbers = const [
    ItemsModel(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'One',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemsModel(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemsModel(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemsModel(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemsModel(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemsModel(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemsModel(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Shichi',
        enName: 'Seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemsModel(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'Eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemsModel(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyuu',
        enName: 'Nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemsModel(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Juu',
        enName: 'Ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff045E77),
      ),
      body: ListView.builder(
        ///like loop but this build wedget when scroll

        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Items(itemsmodel: numbers[index],
          color:  const Color(0xff60C4E0),);
        },
      ),
    );
  }

  /// for loop
  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(
  //       Items(number: numbers[i]),
  //     );

  //   }
  //   return itemsList;
  // }
}
