import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({super.key,  this.text, this.color, this.onTop});

   String? text;
   Color? color;
   VoidCallback? onTop;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTop, ///we delete () on her to 
      child: Container(
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
