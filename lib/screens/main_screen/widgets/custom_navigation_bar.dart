import 'package:flutter/material.dart';
import 'package:music_app/controllers/main_screen_controller.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key,required this.currentIndex,required this.onTap});
  final int currentIndex;
  final ValueChanged<int>? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels : false,
        selectedItemColor: ColorsManager.whiteColor,
        type: BottomNavigationBarType.fixed,
        items: [
          for(var item in MainScreenController.bottomNavigationBarIcons)
          BottomNavigationBarItem(icon:item,label: "")
        ],
        backgroundColor: ColorsManager.primaryColor,
        currentIndex: currentIndex,
        onTap: onTap,
        );
  }
}