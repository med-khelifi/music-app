import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes/routes_names.dart';
import 'package:music_app/screens/main_screen/main_screen.dart';
import 'package:music_app/screens/main_screen/widgets/pages/song_controller_page.dart';
import 'package:music_app/screens/onboarding_page/onboarding_page.dart';
import 'package:music_app/screens/splash_screen/splash_screen.dart';

class RoutesManager{
  static Map<String, WidgetBuilder> routes = {
    RoutesNames.splashScreen :  (context) => SplashScreen(),
    RoutesNames.onboardingScreen :  (context) => OnboardingScreen(),
    RoutesNames.mainScreen :  (context) => MainScreen(),
    RoutesNames.musicControlScreen :  (context) => SongControllerPage(),
  };
}