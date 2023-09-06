import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_app/components/item_info.dart';
import 'package:language_app/models/items_class.dart';

class PharasesItem extends StatelessWidget {
  const PharasesItem({super.key, required this.color, required this.itemsmodel});
  final Color color;
  final ItemsModel itemsmodel;
  @override
  Widget build(BuildContext context) {
     
    return Container(
    height: 100,
    color:  color,
    child: ItemInfo(itemsmodel: itemsmodel),
    );  
   
  }
}