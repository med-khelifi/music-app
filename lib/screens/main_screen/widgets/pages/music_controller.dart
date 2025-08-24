import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors/colors_manager.dart';

class MusicController extends StatelessWidget {
  const MusicController({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.shuffle_outlined,color: ColorsManager.whiteColor),
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    ColorsManager.searchBoxFillColor,
                    ColorsManager.lightPurpleColor,
                  ]),
                ),
                child: Icon(Icons.skip_previous,color:ColorsManager.whiteColor)
                ),
              CircleAvatar(
                backgroundColor: ColorsManager.searchBoxFillColor,
                radius: 28,
                child: Icon(Icons.pause,color: ColorsManager.whiteColor,size: 32,),
              ),
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    ColorsManager.searchBoxFillColor,
                    ColorsManager.lightPurpleColor,
                  ]),
                ),
                child: Icon(Icons.skip_next,color:ColorsManager.whiteColor)
                ),
              Icon(Icons.loop_sharp,color: ColorsManager.whiteColor),
            ],
          ),
          Slider(padding: EdgeInsets.only(top :20,right: 20,left:20), value: 0.5, onChanged: onChanged),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("2:05",style: TextStyle(color: ColorsManager.searchBoxFillColor)),
                Spacer(),
                Text("3:45",style: TextStyle(color: ColorsManager.searchBoxFillColor)),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onChanged(double value) {
  }
}