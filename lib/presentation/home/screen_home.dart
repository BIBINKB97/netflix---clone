import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widget/main_card.dart';
import 'package:netflix/presentation/widget/main_title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainTitle(
            title: "Released in the past year",
          ),
          kheight,
          LimitedBox(
              maxHeight: 200,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (index) => MainCard())))
        ],
      ),
    );
  }
}
