import 'package:flutter/material.dart';
///This Cod For Grop Of Containers Items Can use it in any broject
class Category extends StatelessWidget {
  Category(this.text, this.color, this.onTop);

  Color? color;
  VoidCallback? onTop;
  String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 100,
        padding:const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        color: color,
        child: Text(
          text!,
          style:const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
