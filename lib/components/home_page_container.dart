import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modules/home_page_container_class.dart';

class home_page_container extends StatelessWidget {
   home_page_container({super.key, required this.item});
   Home_page_container_items item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: item.onTap,
        child: Container(
          height: 70,
          color: item.color,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 5, 0),
            child: Text(
              item.category_name,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
