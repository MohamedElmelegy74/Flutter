import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff045E77),
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xff60C4E0),
            child: Row(
              ///photo,ENtext,JPText and play Icon
              children: [
                Container(
                color: const Color(0xffFF8C00),
                child: Image.asset('assets/images/numbers/number_one.png',)),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('ichi',style: TextStyle(color: Colors.white,fontSize: 18),),
                    Text('one',style: TextStyle(color: Colors.white,fontSize: 18),)
                    ],
                  ),
                ),
                const Spacer(flex: 1),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.play_arrow,
                  color: Colors.white,
                  size: 30,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
