import 'package:flutter/material.dart';
import '../components/phrases_page_builder.dart';
import '../modules/phrases_page_builder_class.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});
  List<PhrasePageBuilderClass> phrase = [
    PhrasePageBuilderClass(
      en_name: "are_you_coming",
      jp_name: "Anata wa kite imasu",
      sound_path: "sounds/phrase/are_you_coming.wav",
    ),
    PhrasePageBuilderClass(
      en_name: "dont_forget_to_subscribe",
      jp_name: "Kōdoku o wasurenaide kudasai",
      sound_path: "sounds/phrase/dont_forget_to_subscribe.wav",
    ),
    PhrasePageBuilderClass(
      en_name: "how_are_you_feeling",
      jp_name: "Go kibun wa ikagadesu ka",
      sound_path: "sounds/phrase/how_are_you_feeling.wav",
    ),
    PhrasePageBuilderClass(
      en_name: "i_love_anime",
      jp_name: "Watashi wa anime ga daisukidesu",
      sound_path: "sounds/phrase/i_love_anime.wav",
    ),
    PhrasePageBuilderClass(
      en_name: "i_love_programming",
      jp_name: "Watashi wa puroguramingu ga daisukidesu",
      sound_path: "sounds/phrase/i_love_programming.wav",
    ),
    PhrasePageBuilderClass(
      en_name: "programming_is_easy",
      jp_name: "Puroguramingu wa kantandesu",
      sound_path: "sounds/phrase/programming_is_easy.wav",
    ),
    PhrasePageBuilderClass(
      en_name: "what_is_your_name",
      jp_name: "Anata no namae wa nandesuka",
      sound_path: "sounds/phrase/what_is_your_name.wav",
    ),
    PhrasePageBuilderClass(
      en_name: "where_are_you_going",
      jp_name: "Doko ni iku no",
      sound_path: "sounds/phrase/where_are_you_going.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Phrases"),
        ),
        backgroundColor: Colors.white38,
        body: ListView(
          children: phrase.map((e) => PhrasePageBuilder(phrase: e)).toList(),
        ));
  }
}
