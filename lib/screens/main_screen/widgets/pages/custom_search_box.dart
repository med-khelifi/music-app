import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';
import 'package:music_app/core/resources/texts/texts_manager.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: ColorsManager.whiteColor
      ),
      enabled: true,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hint: Text(
          TextsManager.searchBoxHint,
          style: TextStyle(
            color:ColorsManager.whiteColor
            )
          ),
        prefixIcon: Icon(Icons.search,color:ColorsManager.whiteColor,size:30),
        contentPadding: EdgeInsets.all(8),
        filled: true,
        fillColor: ColorsManager.searchBoxFillColor,
        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorsManager.searchBoxFillColor,),
          borderRadius : const BorderRadius.all(Radius.circular(50.0)),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide( color: ColorsManager.searchBoxFillColor,),
          borderRadius : const BorderRadius.all(Radius.circular(50.0)),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
            color: ColorsManager.searchBoxFillColor,
          ),
          borderRadius : const BorderRadius.all(Radius.circular(50.0)),
        ),
      )
    );
  }
}