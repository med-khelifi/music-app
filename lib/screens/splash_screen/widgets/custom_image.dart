import 'package:flutter/material.dart';
import 'package:music_app/core/resources/images/images_manager.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
              height: 150,
              width: 150,
              image: AssetImage(ImagesManager.splashScreenImage));
  }
}