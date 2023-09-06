import 'package:flutter/material.dart';
import 'package:language_app/Screens/colors.dart';
import 'package:language_app/Screens/numbers_screen.dart';
import 'package:language_app/Screens/pharases_screen.dart';
import 'package:language_app/components/category_items.dart';
import 'package:language_app/Screens/family_members_screen.dart';

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
                  return NumbersPage();
                }));
              }),

          ///Family Members Screen
          Category(
              text: 'Family Members',
              color: const Color(0xff3B8296),
              onTop: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FamilyMembersPage();
                }));
              }),

          ///Colors Screen
          Category(
              text: 'Colors',
              color: const Color(0xff053B50),
              onTop: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              }),

          ///Phases Screen
          Category(
              text: 'Phases',
              color: const Color(0xff14343D),
              onTop: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PharasesPage();
                }));
              })
        ],
      ),
    );
  }
}
