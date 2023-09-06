import 'package:flutter/material.dart';
import 'package:language_app/components/items.dart';
import 'package:language_app/models/items_class.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});
  final List<ItemsModel> familymembers = const [
    ItemsModel(///work
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichioya',
        enName: 'Father',
        sound: 'sounds/family_members/father.wav'),
    ItemsModel(///work
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'Older brother',
        sound: 'sounds/family_members/ani.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Shi',
        enName: 'Older sister',
        sound: 'sounds/family_members/older sister.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Go',
        enName: 'Younger brother',
        sound: 'sounds/family_members/younger brohter.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Roku',
        enName: 'Younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Shichi',
        enName: 'GrandFather',
        sound: 'sounds/family_members/grand father.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Hachi',
        enName: 'GrandMohter',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemsModel(///work 
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Kyuu',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    ItemsModel(///work 
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Juu',
        enName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'),
      
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor:const Color(0xff045E77),
      ),
      body: ListView.builder(
        ///like loop but this build wedget when scroll

        itemCount: familymembers.length,
        itemBuilder: (context, index) {
          return Items(
            itemsmodel: familymembers[index],
            color: const Color(0xff3B8296),
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
