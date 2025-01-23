import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer(
      {super.key,
      required this.onTap,
      required this.color,
      required this.categoryName});
  final Function() onTap;
  final Color color;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              categoryName,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
