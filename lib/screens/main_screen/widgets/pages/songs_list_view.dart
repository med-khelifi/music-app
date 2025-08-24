import 'package:flutter/material.dart';
import 'package:music_app/screens/main_screen/widgets/pages/custom_list_card.dart';

class SongsListView extends StatelessWidget {
  const SongsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
      child: SizedBox(

        height: 201,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CustomListCard(),
            CustomListCard(),
            CustomListCard(),
          ],
        ),
      ),
    );
  }
}