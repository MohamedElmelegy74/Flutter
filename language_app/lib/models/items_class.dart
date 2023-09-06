import 'package:audioplayers/audioplayers.dart';

class ItemsModel {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const ItemsModel(
      { this.image,
      required this.jpName,
      required this.enName,
      required this.sound});
}

 playSound(ItemsModel playsound){

final player = AudioPlayer();
player.play(AssetSource(playsound.sound));
}

