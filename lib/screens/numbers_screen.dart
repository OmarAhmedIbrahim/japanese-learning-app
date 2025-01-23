import 'package:flutter/material.dart';
import 'package:language_learning/components/numbers_page_builder.dart';
import '../modules/numbers_page_builder_class.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});
  List<NumbersPageBuilderClass> numbers = [
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_one.png",
      en_name: "one",
      jp_name: "ichi",
      sound_path: "sounds/numbers/number_one_sound.mp3",
    ),
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_two.png",
      en_name: "two",
      jp_name: "ni",
      sound_path: "sounds/numbers/number_two_sound.mp3",
    ),
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_three.png",
      en_name: "three",
      jp_name: "san",
      sound_path: "sounds/numbers/number_three_sound.mp3",
    ),
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_four.png",
      en_name: "four",
      jp_name: "shi",
      sound_path: "sounds/numbers/number_four_sound.mp3",
    ),
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_five.png",
      en_name: "five",
      jp_name: "go",
      sound_path: "sounds/numbers/number_five_sound.mp3",
    ),
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_six.png",
      en_name: "six",
      jp_name: "roku",
      sound_path: "sounds/numbers/number_six_sound.mp3",
    ),
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_seven.png",
      en_name: "seven",
      jp_name: "shichi",
      sound_path: "sounds/numbers/number_seven_sound.mp3",
    ),
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_eight.png",
      en_name: "eight",
      jp_name: "hachi",
      sound_path: "sounds/numbers/number_eight_sound.mp3",
    ),
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_nine.png",
      en_name: "nine",
      jp_name: "ku",
      sound_path: "sounds/numbers/number_nine_sound.mp3",
    ),
    NumbersPageBuilderClass(
      image_path: "assets/images/numbers/number_ten.png",
      en_name: "ten",
      jp_name: "juu",
      sound_path: "sounds/numbers/number_ten_sound.mp3",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0XFF3A4750),
          centerTitle: true,
          title: Text(
            "Numbers",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
            children: numbers
                .map((e) => NumbersPageBuilder(
                      number: e,
                    ))
                .toList()));
  }
}
