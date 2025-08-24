import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.title,{super.key,required this.onPressed});
  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                    onPressed: onPressed,
                    child: Container(
                      alignment: Alignment.center,
                      //color: ColorsManager.blueAccentColor,
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                        colors: ColorsManager.customButtonGradientColors,
                        begin: AlignmentGeometry.xy(0, -1),
                        end: AlignmentGeometry.xy(0, 1),
                        )
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                        color: ColorsManager.whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  );
  }
}
