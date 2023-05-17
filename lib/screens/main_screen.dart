import 'package:find_job_app/screens/home.dart';
import 'package:find_job_app/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/BottomNavigation.dart';
class MainScreen extends StatefulWidget {
  final Function() toggleThemeMode;

  MainScreen({super.key, required this.toggleThemeMode,});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
const int homeIndex = 0;
const int profileIndex = 1;
class _MainScreenState extends State<MainScreen> {
  int selectedScreenIndex = homeIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottomNavigation(
          onTap: (int index) {
            setState(() {
              selectedScreenIndex = index;
            });
          },
          selectedIndex: selectedScreenIndex,
        ),
        body: IndexedStack(
          index: selectedScreenIndex,
          children:  [
            HomeScreen(toggleThemeMode: widget.toggleThemeMode),
            ProfileScreen()

          ],
        ));
  }
}