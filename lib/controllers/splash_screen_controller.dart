import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes/routes_names.dart';

class SplashScreenController {
  static moveToOnboardingScreenAfter(BuildContext context,{ int second = 3}) async{
    var _= await Future.delayed(
      Duration(seconds: second),
    ()=>{
      Navigator.pushReplacementNamed(context, RoutesNames.onboardingScreen)
    });
  }
}