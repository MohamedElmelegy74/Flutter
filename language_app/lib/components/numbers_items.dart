import 'package:flutter/material.dart';
import 'package:language_app/models/number_class.dart';

///Refactor numbers itmes page to use it any other pages 

class Items extends StatelessWidget {
  Items({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff60C4E0),
      child: Row(
        ///photo,ENtext,JPText and play Icon
        children: [
          Container(
              color: const Color(0xffFF8C00),
              child: Image.asset(
                number.image,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          const Spacer(flex: 1),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
