import 'package:flutter/material.dart';
import 'package:music_app/core/constants/recommended_songs_data.dart';
import 'package:music_app/screens/main_screen/widgets/pages/custom_list_recommended_item.dart';

class RecommendedLitView extends StatelessWidget {
  const RecommendedLitView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top:12),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => CustomListRecommendedItem(
        songInfo: RecommendedSongsData.recommendedSongs[index]
      ),
      separatorBuilder: (BuildContext context, int index) => SizedBox(height: 4,),
      itemCount: RecommendedSongsData.recommendedSongs.length,
    );
  }
}