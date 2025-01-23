import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../modules/numbers_page_builder_class.dart';

class NumbersPageBuilder extends StatelessWidget {
  NumbersPageBuilder({super.key, required this.number});
  NumbersPageBuilderClass number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFF4A90E2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color:Color(0XFFFAF3E0),
            child: Image.asset(number.image_path),
          ),
          Column(
            children: [
              Text(
                number.jp_name,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                number.en_name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(number.sound_path));
            },
            icon: const Icon(Icons.play_arrow),
            alignment: Alignment.centerRight,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
