import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn({super.key, this.btnText, this.btnColor});
  String? btnText;
  Color? btnColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      height: 60,
      child: Center(
          child: Text(
        '${btnText}',
        style: const TextStyle(fontSize: 20),
      )),
    );
  }
}
