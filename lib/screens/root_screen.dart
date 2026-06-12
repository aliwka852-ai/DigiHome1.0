import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../theme/colors.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int index = 0;

  final screens = const [
    HomeScreen(),
    Placeholder(color: Colors.white), // Family
    Placeholder(color: Colors.white), // ŞAQQULİ
    Placeholder(color: Colors.white), // Settings
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          border: Border(
            top: BorderSide(
              color: AppColors.neonCyan.withOpacity(0.3),
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: AppColors.neonCyan,
          unselectedItemColor: Colors.white54,
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (i) => setState(() => index = i),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Family",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.smart_toy),
              label: "ŞAQQULİ",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}