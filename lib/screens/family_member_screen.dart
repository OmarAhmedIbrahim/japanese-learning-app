import 'package:flutter/material.dart';
import '../components/family_members_page_builder.dart';
import '../modules/family_member_page_builder_class.dart';

class FamilyMemberScreen extends StatelessWidget {
  FamilyMemberScreen({super.key});

  List<FamilyMemberPageBuilderClass> members = [
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/father.png",
      en_name: "father",
      jp_name: "chichi",
      sound_path: "sounds/family_members/family_members_father.wav",
    ),
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/mother.png",
      en_name: "mother",
      jp_name: "haha",
      sound_path: "sounds/family_members/family_members_mother.wav",
    ),
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/son.png",
      en_name: "son",
      jp_name: "musuko",
      sound_path: "sounds/family_members/family_members_son.wav",
    ),
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/daughter.png",
      en_name: "daughter",
      jp_name: "musume",
      sound_path: "sounds/family_members/family_members_daughter.wav",
    ),
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/grandfather.png",
      en_name: "grand_father",
      jp_name: "sofu",
      sound_path: "sounds/family_members/family_members_grand father.wav",
    ),
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/grandmother.png",
      en_name: "grand_mother",
      jp_name: "sobo",
      sound_path: "sounds/family_members/family_members_grand mother.wav",
    ),
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/older_brother.png",
      en_name: "elder_brother",
      jp_name: "ani",
      sound_path: "sounds/family_members/family_members_older bother.wav",
    ),
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/older_sister.png",
      en_name: "elder_sister",
      jp_name: "ane",
      sound_path: "sounds/family_members/family_members_older sister.wav",
    ),
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/younger_brother.png",
      en_name: "younger_brother",
      jp_name: "otouto",
      sound_path: "sounds/family_members/family_members_younger brohter.wav",
    ),
    FamilyMemberPageBuilderClass(
      image_path: "assets/images/family_members/younger_sister.png",
      en_name: "younger_sister",
      jp_name: "imouto",
      sound_path: "sounds/family_members/family_members_younger sister.wav",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Family Members"),
        ),
        backgroundColor: Colors.white38,
        body: ListView(
            children: members
                .map((e) => FamilyMembersPageBuilder(
                      family_member: e,
                    ))
                .toList()));
  }
}
