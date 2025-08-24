import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';
import 'package:music_app/core/resources/images/images_manager.dart';

class CustomListCard extends StatelessWidget {
  const CustomListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Image(
            height: 150,
            width: 150,
            image: AssetImage(ImagesManager.splashScreenImage)
          ),
        ),
        Text("Who Says",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: ColorsManager.whiteColor
          ),
        ),
        Text(
          "Selena Gomez",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: ColorsManager.whiteColor
          ),
        )
      ],
    );
  }
}