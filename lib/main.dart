import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'theme/colors.dart';

void main() {
  runApp(const DigiHomeApp());
}

class DigiHomeApp extends StatelessWidget {
  const DigiHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const LoginScreen(),
    );
  }
}
