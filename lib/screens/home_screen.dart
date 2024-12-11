import 'package:flutter/material.dart';
import 'package:language_learning/screens/colors_screen.dart';
import 'package:language_learning/screens/family_member_screen.dart';
import 'package:language_learning/screens/phrases_screen.dart';
import '../components/home_page_container.dart';
import '../modules/home_page_container_class.dart';
import 'numbers_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // objects of the Home_page_container_items class that are fed to home_page_container
    List<Home_page_container_items> pages = [
      Home_page_container_items(
          color: Colors.greenAccent,
          category_name: "Numbers",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return NumbersScreen();
                },
              ),
            );
          }),
      Home_page_container_items(
          color: Colors.pinkAccent,
          category_name: "Family_members",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return FamilyMemberScreen();
                },
              ),
            );
          }),
      Home_page_container_items(
          color: Colors.amberAccent,
          category_name: "Colours",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return ColorsScreen();
                },
              ),
            );
          }),
      Home_page_container_items(
          color: Colors.lightBlueAccent,
          category_name: "Phrases",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return PhrasesScreen();
                },
              ),
            );
          })
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Japanese learning ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black26,
      ),
      body: Column(
          children: pages.map((e) => home_page_container(item: e)).toList()),
    );
  }
}
