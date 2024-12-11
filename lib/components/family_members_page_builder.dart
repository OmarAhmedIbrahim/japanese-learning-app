import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../modules/family_member_page_builder_class.dart';

class FamilyMembersPageBuilder extends StatelessWidget {
  FamilyMembersPageBuilder({super.key, required this.family_member});
  FamilyMemberPageBuilderClass family_member;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(family_member.image_path),
            color: Colors.white,
          ),
          Column(
            children: [
              Text(
                family_member.jp_name,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(family_member.en_name),
            ],
          ),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(family_member.sound_path));
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
