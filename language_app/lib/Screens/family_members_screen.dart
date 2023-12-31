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
        jpName: 'Ane',
        enName: 'Older sister',
        sound: 'sounds/family_members/ane.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otouto',
        enName: 'Younger brother',
        sound: 'sounds/family_members/otooto.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imouto',
        enName: 'Younger sister',
        sound: 'sounds/family_members/younger_sister.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojiisan',
        enName: 'GrandFather',
        sound: 'sounds/family_members/grand_father.wav'),
    ItemsModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'GrandMohter',
        sound: 'sounds/family_members/grand_mother.wav'),
    ItemsModel(///work 
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    ItemsModel(///work 
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
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
