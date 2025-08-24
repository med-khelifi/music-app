import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';

class CustomScreenBackground extends StatelessWidget {
  const CustomScreenBackground({super.key,required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.xy(0.20,-0.98),
              end: AlignmentGeometry.xy(-0.20, 0.98),
              colors:ColorsManager.backgroundGradientColors
              )
          ),
          child: child
          );
  }
}