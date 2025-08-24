import 'package:flutter/material.dart';
import 'package:music_app/controllers/main_screen_controller.dart';
import 'package:music_app/screens/main_screen/widgets/custom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:CustomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        ),
      body: MainScreenController.bottomNavigationBarPages[currentIndex],
    );
  }
}