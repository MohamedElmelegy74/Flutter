import 'package:flutter/material.dart';
import 'package:tune_app/model/items_model.dart';

class UiItems extends StatelessWidget {
  UiItems ({super.key,required this.tune,required this.onTop});
 final VoidCallback? onTop;
  final ItemsModel tune;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
          child: GestureDetector(
          onTap: onTop,
            child: Container(
              color: tune.color,
              
            ),
          ),
    );
  }
}
