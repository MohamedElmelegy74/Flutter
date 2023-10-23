import 'package:flutter/material.dart';
import 'package:language_app/components/items.dart';
import 'package:language_app/models/items_class.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  final List<ItemsModel> colors = const [
    ItemsModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    ItemsModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    ItemsModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiierō',
        enName: 'Dusty Yellow',
        sound: 'sounds/colors/dusty_yellow.wav'),
    ItemsModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
    ItemsModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    ItemsModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
    ItemsModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'White',
        sound: 'sounds/colors/white.wav'),
    ItemsModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff045E77),
      ),
      body: ListView.builder(
        ///like loop but this build wedget when scroll

        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Items(
            itemsmodel: colors[index],
            color: const Color(0xff053B50),
          );
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


