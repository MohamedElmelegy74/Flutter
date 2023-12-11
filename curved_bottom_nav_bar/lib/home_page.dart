import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5B5B5B),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xff5B5B5B),
        color: const Color(0xff2A2A2A),
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          print(index);
        },
        items: const [
          Icon(
            Icons.home,
            color: Color(0xffF8A00E),
          ),
          Icon(
            Icons.barcode_reader,
            color: Color(0xffF8A00E),
          ),
          Icon(
            Icons.book_online_sharp,
            color: Color(0xffF8A00E),
          ),
          Icon(
            Icons.supervised_user_circle,
            color: Color(0xffF8A00E),
          ),
        ],
      ),
    );
  }
}
