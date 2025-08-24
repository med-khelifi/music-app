import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';
import 'package:music_app/core/resources/images/images_manager.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    double gradientHeight = MediaQuery.of(context).size.height / 9;
    double gradientWidth = MediaQuery.of(context).size.width;
    return Expanded(
              flex: 6,
              child: Stack(
                children: [ 
                  SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image(
                        height: double.infinity,
                        width: gradientWidth,
                        fit: BoxFit.fill,
                        image: AssetImage(
                        ImagesManager.onboardingScreenImage,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(  
                      alignment: Alignment.bottomCenter,
                      height: gradientHeight,
                      width: gradientWidth,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors:ColorsManager.customBottomImageGradientColors
                          )
                      ),
                    ),
                  ),
                ],
              ),
              );
  }
}