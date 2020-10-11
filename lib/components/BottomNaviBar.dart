import 'package:flutter/material.dart';

class BottomNaviBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'My Pet'),
        ],
        selectedItemColor: Colors.white,
      ),
    );
  }
}
