import 'package:flutter/material.dart';
import 'package:music_app/controllers/splash_screen_controller.dart';
import 'package:music_app/core/resources/images/images_manager.dart';
import 'package:music_app/screens/splash_screen/widgets/custom_screen_background.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashScreenController.moveToOnboardingScreenAfter(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScreenBackground(
          child: Center(
            child: Image(
              height: 150,
              width: 150,
              image: AssetImage(ImagesManager.splashScreenImage)),
          ),
        )
        )
        );
  }
}