import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/controllers/main_screen_controller.dart';
import 'package:music_app/core/models/recommended_song.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';

class CustomListRecommendedItem extends StatelessWidget {
  const CustomListRecommendedItem({super.key,required this.songInfo});
  final RecommendedSong songInfo;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: ColorsManager.whiteColor,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child:Image(image: AssetImage(songInfo.imagePath)),
        ),
        title: Text(songInfo.singerName,style: TextStyle(color:ColorsManager.whiteColor),),
        subtitle: Text(songInfo.songName,style: TextStyle(color:ColorsManager.whiteColor)),
        trailing: Icon(
          songInfo.liked ? 
          CupertinoIcons.heart_fill:
          CupertinoIcons.heart,
          color:songInfo.liked ? ColorsManager.redColor : ColorsManager.whiteColor
          ),
      ),
      onTap: () => MainScreenController.goToMusicControlPage(context,songInfo),
    );
  }
}