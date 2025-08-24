import 'package:flutter/material.dart';
import 'package:music_app/core/resources/texts/texts_manager.dart';
import 'package:music_app/screens/main_screen/widgets/custom_page_background.dart';
import 'package:music_app/screens/main_screen/widgets/pages/custom_search_box.dart';
import 'package:music_app/screens/main_screen/widgets/pages/custom_text.dart';
import 'package:music_app/screens/main_screen/widgets/pages/recommended_lit_view.dart';
import 'package:music_app/screens/main_screen/widgets/pages/songs_list_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomPageBackground(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 30),
                child: CustomSearchBox(),
              ),
              CustomText(data: TextsManager.title1),
              SongsListView(),
              CustomText(data: TextsManager.title2),
              RecommendedLitView()
            ],
          ),
        ),
      ),
      );
  }
}

class CustomTitle {
}