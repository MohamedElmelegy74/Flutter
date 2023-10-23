import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemsModel {
  final String sound;
  final Color color;

  const ItemsModel({required this.sound, required this.color});
}

playSound(ItemsModel playsound) {
  final player = AudioPlayer();
  player.play(AssetSource(playsound.sound));
}
