import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';
import 'package:music_app/core/resources/texts/texts_manager.dart';

class SongControllerPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SongControllerPageAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.primaryColor,
      title: Text(
        TextsManager.nowPlaying,
        style: TextStyle(
          fontSize: 16,
          color: ColorsManager.whiteColor
        ),
        ),
      centerTitle: true,
      leading: Icon(Icons.arrow_back_ios,color: ColorsManager.whiteColor,size:16),
        actions: [
          Padding(padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.share,color: ColorsManager.whiteColor)),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.more_vert_sharp,color: ColorsManager.whiteColor),
          ),
        ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}