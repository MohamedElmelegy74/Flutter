import 'package:flutter/material.dart';
import 'package:language_app/components/pharases_items.dart';
import 'package:language_app/models/items_class.dart';

class PharasesPage extends StatelessWidget {
  PharasesPage({super.key});
  final List<ItemsModel> pharases = const [
    ItemsModel(
        jpName: 'Kimasu ka',
        enName: 'Are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemsModel(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'How are you felling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemsModel(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I Love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemsModel(
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'I Love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemsModel(
        jpName: 'Namae wa nandesu ka',
        enName: 'What Is Your Name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemsModel(
        jpName: 'Doko ni iku no',
        enName: 'Where Are You Going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemsModel(
        jpName: 'Hai, ikimasu',
        enName: 'Yes Im Coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
    ItemsModel(
        jpName: 'Arigatōgozaimasu',
        enName: 'Thank You',
        sound: 'sounds/phrases/ai_arigatougozaimasita.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pharases'),
        backgroundColor: const Color(0xff045E77),
      ),
      body: ListView.builder(
        ///like loop but this build wedget when scroll
        itemCount: pharases.length,
        itemBuilder: (context, index) {
          return PharasesItem(
            itemsmodel: pharases[index],
            color: const Color(0xff14343D),
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
