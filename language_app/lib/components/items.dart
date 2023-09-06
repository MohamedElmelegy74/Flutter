import 'package:flutter/material.dart';
import 'package:language_app/components/item_info.dart';
import 'package:language_app/models/items_class.dart';

///Refactor numbers itmes page to use it any other pages

class Items extends StatelessWidget {
  const Items({super.key, required this.itemsmodel, required this.color});
  final ItemsModel itemsmodel;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        ///photo,ENtext,JPText and play Icon
        children: [
          Container(
              color: const Color(0xffFF8C00),
              child: Image.asset(
                itemsmodel.image!,
              )),
           Expanded(child: ItemInfo(itemsmodel: itemsmodel))
        ],
      ),
    );
  }
}
