import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:inventory_app/pages/favorite_page.dart';
import 'package:inventory_app/pages/home_page.dart';
import 'package:inventory_app/pages/profile_page.dart';
import 'package:inventory_app/pages/setting_page.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int index = 0;
  final screen = const [
    HomePage(),
    FavoritePage(),
    ProfilePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.transparent,
        color: Colors.purple,
        buttonBackgroundColor: Colors.pink,
        index: index,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
