import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../modules/phrases_page_builder_class.dart';

class PhrasePageBuilder extends StatelessWidget {
  PhrasePageBuilder({super.key, required this.phrase});
  PhrasePageBuilderClass phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.lightBlueAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrase.jp_name,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  phrase.en_name,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(phrase.sound_path));
            },
            icon: const Icon(Icons.play_arrow),
            alignment: Alignment.centerRight,
          )
        ],
      ),
    );
    ;
  }
}
