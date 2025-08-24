import 'package:flutter/material.dart';
import 'package:music_app/core/models/recommended_song.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';

class SongInfoCard extends StatelessWidget {
  const SongInfoCard({super.key,required this.info});
  final RecommendedSong info ;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadiusGeometry.all(Radius.circular(20))
            ),
            child: Image(
              width: 250,
              height: 300,
              image: AssetImage(info.imagePath)
              ),
          ),
        ),
        Text(info.songName,style: TextStyle(color: ColorsManager.whiteColor,fontWeight: FontWeight.w700),),
        Text(info.singerName,style: TextStyle(color: ColorsManager.searchBoxFillColor,fontWeight: FontWeight.w300)),
      ],
    );
  }
}