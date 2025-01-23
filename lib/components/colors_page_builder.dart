import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../modules/colors_page_builder_class.dart';

class ColorsPageBuilder extends StatelessWidget {
  ColorsPageBuilder({super.key, required this.color});
  ColorsPageBuilderClass color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFA685E2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(color.image_path),
            color: Color(0XFFFAF3E0),
          ),
          Column(
            children: [
              Text(
                color.jp_name,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                color.en_name,
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
              await player.play(AssetSource(color.sound_path));
            },
            icon: const Icon(Icons.play_arrow),
            alignment: Alignment.centerRight,
            color: Colors.white,
          )
        ],
      ),
    );
    ;
  }
}
