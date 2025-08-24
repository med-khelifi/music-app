import 'package:music_app/core/models/recommended_song.dart';
import 'package:music_app/core/resources/images/images_manager.dart';

class RecommendedSongsData {
  static List<RecommendedSong> recommendedSongs = [
    RecommendedSong(imagePath: ImagesManager.onboardingScreenImage, singerName: "Shakira", songName: "WAKA WAKA", liked: true),
    RecommendedSong(imagePath: ImagesManager.onboardingScreenImage, singerName: "Shakira", songName: "WAKA WAKA", liked: !true),
    RecommendedSong(imagePath: ImagesManager.onboardingScreenImage, singerName: "Shakira", songName: "WAKA WAKA", liked: true),
  ];
}