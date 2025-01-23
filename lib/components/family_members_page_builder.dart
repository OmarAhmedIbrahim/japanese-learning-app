import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../modules/family_member_page_builder_class.dart';

class FamilyMembersPageBuilder extends StatelessWidget {
  FamilyMembersPageBuilder({super.key, required this.family_member});
  FamilyMemberPageBuilderClass family_member;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFFF9F80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Color(0XFFFAF3E0),
            child: Image.asset(family_member.image_path),
          ),
          Column(
            children: [
              Text(
                family_member.jp_name,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                family_member.en_name,
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
              await player.play(AssetSource(family_member.sound_path));
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
