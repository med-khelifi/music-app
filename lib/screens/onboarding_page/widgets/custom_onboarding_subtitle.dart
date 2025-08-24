import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';
import 'package:music_app/core/resources/texts/texts_manager.dart';

class CustomOnboardingSubtitle extends StatelessWidget {
  const CustomOnboardingSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
            TextsManager.onboardingSubtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorsManager.whiteColor,
              fontSize: 15,
              fontWeight: FontWeight.w600
            ),
            );
  }
}