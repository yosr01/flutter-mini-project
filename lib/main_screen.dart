import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projet1/screens/favoris_screen.dart';
import 'package:projet1/screens/home_screen.dart';
import 'package:projet1/screens/profile_screen.dart';
import 'package:projet1/screens/settings_screen.dart';

class MainSreen extends StatefulWidget {
  const MainSreen({Key? key}) : super(key: key);

  @override
  State<MainSreen> createState() => _MainSreenState();
}

class _MainSreenState extends State<MainSreen> {
  final Color mainColor = const Color(0xff45645);

  int index = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    FavorisScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index, //selected icon
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white,
          // fixedColor: Colors.orange,
          type: BottomNavigationBarType.shifting,
          onTap: (newIndex) {
            setState(() {
              index = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: index == 0 ? Colors.orange : Colors.amber,
                icon: const Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: index == 1 ? Colors.red : Colors.amber,
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.blue,
                ),
                label: "Favorite"),
            BottomNavigationBarItem(
                backgroundColor: index == 2 ? Colors.red : Colors.amber,
                icon: const Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                label: "Profile"),
            BottomNavigationBarItem(
                backgroundColor: index == 3 ? Colors.red : Colors.amber,
                icon: const Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                label: "Settings"),
          ]),
      body: _pages[index],
    );
  }
}
