import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomBotomNavigationBar extends StatelessWidget {
  const CustomBotomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: "Menu",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline),
          label: "Menu",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: "Menu",
        ),
      ],
    );
  }
}
