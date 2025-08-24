import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes/routes_names.dart';
import 'package:music_app/core/resources/texts/texts_manager.dart';
import 'package:music_app/screens/onboarding_page/widgets/custom_Image.dart';
import 'package:music_app/screens/onboarding_page/widgets/custom_button.dart';
import 'package:music_app/screens/onboarding_page/widgets/custom_onboarding_subtitle.dart';
import 'package:music_app/screens/onboarding_page/widgets/custom_onboarding_title.dart';
import 'package:music_app/screens/splash_screen/widgets/custom_screen_background.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    // double gradientHeight = MediaQuery.of(context).size.height / 9;
    // double gradientWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: CustomScreenBackground(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              children: [
                const Spacer(flex: 2,),
                CustomOnboardingTitle(),
                SizedBox(height: 10,),
                CustomOnboardingSubtitle(),
                const Spacer(flex: 1,),
                CustomButton(
                  TextsManager.onboardingButtonTitle,
                  onPressed: ()=> {
                    Navigator.pushReplacementNamed(context,RoutesNames.mainScreen)
                    },
                  ),
                CustomImage()
              ]
            ),
            ),
          )
        )
        );
  }
}