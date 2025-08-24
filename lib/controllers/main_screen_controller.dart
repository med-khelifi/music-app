import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/models/recommended_song.dart';
import 'package:music_app/core/resources/routes/routes_names.dart';
import 'package:music_app/screens/main_screen/widgets/pages/main_page.dart';


class MainScreenController {
  static List<Widget> bottomNavigationBarIcons = [
    Icon(size: 30,Icons.menu),
    Icon(size: 30,Icons.home_outlined),
    Icon(size: 30,CupertinoIcons.heart),
    Icon(size: 30,Icons.menu_sharp),
    Icon(size: 30,Icons.settings),
  ];
  static List<Widget> bottomNavigationBarPages = [
    Center(child: Text("Page 1"),),
    MainPage(),
    Center(child: Text("Page 3"),),
    Center(child: Text("Page 4"),),
    Center(child: Text("Page 5"),),
  ];

  static void goToMusicControlPage(BuildContext context,RecommendedSong song){
    Navigator.pushNamed(context, RoutesNames.musicControlScreen,arguments: song);
  }
}