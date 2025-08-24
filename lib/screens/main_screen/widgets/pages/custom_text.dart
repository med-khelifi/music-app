import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';


class CustomText extends StatelessWidget {
  const CustomText({super.key,required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        data,
        style: TextStyle(
          fontSize: 20,
          color: ColorsManager.whiteColor,
          fontWeight: FontWeight.bold
        ),),
    );
  }
}