import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  CustomTextFild({super.key, this.hintText, this.icon});
  String? hintText;
  Icon? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          prefixIcon: icon),
    );
  }
}
