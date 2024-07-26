
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../views/favourite_screen.dart';
import '../views/home_screen.dart';
import '../views/setting_screen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screen = [
      const HomeScreen(),
      const FavouriteScreen(),
      const SettingScreen(),
    ];

    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:AppColors.primaryColor,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          unselectedItemColor: AppColors.blackColors.withOpacity(0.6),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(CupertinoIcons.house_fill),
                icon: Icon(CupertinoIcons.home),
                label: "Home"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite),
                icon: Icon(Icons.favorite_border),
                label: "Favourite"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.settings_rounded),
                icon: Icon(Icons.settings),
                label: "Setting"),
          ]),
    );
  }
}
