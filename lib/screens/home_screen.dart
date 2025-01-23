import 'package:flutter/material.dart';
import 'package:language_learning/screens/colors_screen.dart';
import 'package:language_learning/screens/family_member_screen.dart';
import 'package:language_learning/screens/phrases_screen.dart';
import '../components/home_page_container.dart';
import 'numbers_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // objects of the Home_page_container_items class that are fed to home_page_container

    return Scaffold(
      backgroundColor: Color(0XFFFAF3E0),
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Japanese learning ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Color(0XFF3A4750),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 15,
        ),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
          ),
          children: [
            HomePageContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return NumbersScreen();
                    },
                  ),
                );
              },
              color: Color(0XFF4A90E2),
              categoryName: 'Numbers',
            ),
            HomePageContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return FamilyMemberScreen();
                    },
                  ),
                );
              },
              color: Color(0XFFFF9F80),
              categoryName: 'Family Members',
            ),
            HomePageContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ColorsScreen();
                    },
                  ),
                );
              },
              color: Color(0XFFA685E2),
              categoryName: 'Colours',
            ),
            HomePageContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return PhrasesScreen();
                    },
                  ),
                );
              },
              color: Color(0XFF6FCF97),
              categoryName: 'Phrases',
            ),
          ],
        ),
      ),
    );
  }
}
