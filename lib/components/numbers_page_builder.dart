import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../modules/numbers_page_builder_class.dart';

class NumbersPageBuilder extends StatelessWidget {
  NumbersPageBuilder({super.key, required this.number});
  NumbersPageBuilderClass number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(number.image_path),
            color: Colors.white,
          ),
          Column(
            children: [
              Text(
                number.jp_name,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(number.en_name),
            ],
          ),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(number.sound_path));
            },
            icon: const Icon(Icons.play_arrow),
            alignment: Alignment.centerRight,
          )
        ],
      ),
    );
  }
}
