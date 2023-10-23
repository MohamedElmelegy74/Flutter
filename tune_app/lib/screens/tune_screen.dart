import 'package:flutter/material.dart';
import 'package:tune_app/model/items_model.dart';
import 'package:tune_app/widgets/items_ui.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});
  

  final List<ItemsModel> tunes = const [
    ItemsModel(
      sound: 'note1.wav',
      color: Color(0xffEE2B3C)
    ),
    ItemsModel(
      sound: 'note2.wav',
      color: Color(0xffF49431)
    ),
    ItemsModel(
      sound: 'note3.wav',
      color: Color(0xffFBF25E)
    ),
    ItemsModel(
      sound: 'note4.wav',
      color: Color(0xff3DC15B)
    ),
    ItemsModel(
      sound: 'note5.wav',
      color: Color(0xff0DA588)
    ),
    ItemsModel(
      sound: 'note6.wav',
      color: Color(0xff0EA0E8)
    ),
    ItemsModel(
      sound: 'note7.wav',
      color: Color(0xff9A10A8)
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tune'),
        backgroundColor: const Color(0xff243138),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => UiItems(
                  tune: e,
                  onTop: () {
                    playSound(e);
                  }),
            )
            .toList(),
      ),
    );
  }

  ///for loop
  // List<UiItems> getItems() {
  //   List<UiItems> items = [];
  //   for (var color in tuneColor) {
  //     items.add(UiItems(color: color));
  //   }
  //   return items;
  // }
}
