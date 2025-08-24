import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';

class MusicActions extends StatelessWidget {
  const MusicActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Icon(CupertinoIcons.heart,color:ColorsManager.searchBoxFillColor),
            Text("Like")
          ],
        )
      ],
    );
  }
}