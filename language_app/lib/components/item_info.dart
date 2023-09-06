import 'package:flutter/material.dart';
import 'package:language_app/models/items_class.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemsmodel});
  final ItemsModel itemsmodel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemsmodel.jpName,

                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                itemsmodel.enName,

                style: const TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
        const Spacer(flex: 1),
        IconButton(
          onPressed: () {
            playSound(itemsmodel);
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 15),
        ),
      ],
    );
  }
}