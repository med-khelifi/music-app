import 'package:flutter/material.dart';

class ColorsManager {
  static Color primaryColor = Color(0xFF411F5C); 
  static Color secondaryColor = Color(0x802C17CA);
  static Color darkBlueColor = Color(0xFF2F5D9A);
  static Color lightBlueColor = Color(0xFF80CFF2);

  static Color lightBlueColor1 = Color(0xFF3097C5);
  static Color darkBlueColor1 = Color(0xFF261F5C);
  static Color lightPurpleColor = Color(0xFF854F9F);

  static Color whiteColor = Colors.white;
  static Color redColor = Colors.red;
  static Color blueAccentColor = const Color.fromRGBO(68, 138, 255, 1);
  static Color blueAccentOpacity004Color = const Color.fromRGBO(68, 138, 255, .004);
// 
  static List<Color> backgroundGradientColors = [
              primaryColor,
              secondaryColor,
              blueAccentColor
            ];
  static List<Color> customButtonGradientColors = [
              lightBlueColor1,
              lightBlueColor1,
              whiteColor,
            ];
  static List<Color> customBottomImageGradientColors = [
                            ColorsManager.blueAccentOpacity004Color,
                            ColorsManager.primaryColor,
                        ];

  static Color searchBoxFillColor = Color(0xFFB1AFE9);

  static List<Color> backgroundPagesGradientColors = [
              primaryColor,  
              darkBlueColor1
            ];
}