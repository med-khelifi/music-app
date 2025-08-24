import 'package:flutter/material.dart';
import 'package:music_app/core/models/recommended_song.dart';
import 'package:music_app/screens/main_screen/widgets/custom_page_background.dart';
import 'package:music_app/screens/main_screen/widgets/pages/music_actions.dart';
import 'package:music_app/screens/main_screen/widgets/pages/music_controller.dart';
import 'package:music_app/screens/main_screen/widgets/pages/song_controller_page_app_bar.dart';
import 'package:music_app/screens/main_screen/widgets/pages/song_info_card.dart';

class SongControllerPage extends StatelessWidget {
  const SongControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    RecommendedSong song = ModalRoute.of(context)!.settings.arguments !as RecommendedSong;

    return Scaffold(
      appBar: SongControllerPageAppBar(),
      body: CustomPageBackground(
        child: SafeArea(
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SongInfoCard(info:song ),
                  MusicController(),
                  MusicActions()
                ],
              ),
            )
            )
          ),
      ),
    );
  }
}