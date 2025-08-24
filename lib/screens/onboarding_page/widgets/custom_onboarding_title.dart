import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';
import 'package:music_app/core/resources/texts/texts_manager.dart';

class CustomOnboardingTitle extends StatelessWidget {
  const CustomOnboardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            TextsManager.onboardingTitlePart1,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1,
              color: ColorsManager.whiteColor,
              fontSize: 50,
              fontWeight: FontWeight.w900
            ),
          ),
          Text(
            TextsManager.onboardingTitlePart2,
            style: TextStyle(
              height: 1,
              color: ColorsManager.blueAccentColor,
              fontSize: 50,
              fontWeight: FontWeight.w900
            ),
          )
      ],
    );
  }
}