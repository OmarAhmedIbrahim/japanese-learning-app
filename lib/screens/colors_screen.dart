import 'package:flutter/material.dart';

import '../components/colors_page_builder.dart';
import '../modules/colors_page_builder_class.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({super.key});

  List<ColorsPageBuilderClass> color = [
    ColorsPageBuilderClass(
      image_path: "assets/images/colors/color_black.png",
      en_name: "black",
      jp_name: "Kuro",
      sound_path: "sounds/colors/colors_black.wav",
    ),
    ColorsPageBuilderClass(
      image_path: "assets/images/colors/color_brown.png",
      en_name: "brown",
      jp_name: "Cha",
      sound_path: "sounds/colors/colors_brown.wav",
    ),
    ColorsPageBuilderClass(
      image_path: "assets/images/colors/color_dusty_yellow.png",
      en_name: "dusty_yellow",
      jp_name: "Hokori ",
      sound_path: "sounds/colors/colors_dusty yellow.wav",
    ),
    ColorsPageBuilderClass(
      image_path: "assets/images/colors/color_gray.png",
      en_name: "gray",
      jp_name: "Hai",
      sound_path: "sounds/colors/colors_gray.wav",
    ),
    ColorsPageBuilderClass(
      image_path: "assets/images/colors/color_green.png",
      en_name: "green",
      jp_name: "Midori",
      sound_path: "sounds/colors/colors_green.wav",
    ),
    ColorsPageBuilderClass(
      image_path: "assets/images/colors/color_red.png",
      en_name: "red",
      jp_name: "Aka",
      sound_path: "sounds/colors/colors_red.wav",
    ),
    ColorsPageBuilderClass(
      image_path: "assets/images/colors/color_white.png",
      en_name: "white",
      jp_name: "Shiro",
      sound_path: "sounds/colors/colors_white.wav",
    ),
    ColorsPageBuilderClass(
      image_path: "assets/images/colors/yellow.png",
      en_name: "yellow",
      jp_name: "Kiiro",
      sound_path: "sounds/colors/colors_yellow.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Colors"),
        ),
        backgroundColor: Colors.white38,
        body: ListView(
            children: color
                .map((e) => ColorsPageBuilder(
                      color: e,
                    ))
                .toList()));
  }
}
