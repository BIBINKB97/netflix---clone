import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widget/number_title_card.dart';
import 'package:netflix/presentation/widget/main_title_card.dart';

import 'widget/custom_button_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(kMainImage))),
                width: double.infinity,
                height: 600,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButtonWidget(
                      title: "My List",
                      icon: Icons.add,
                    ),
                    _playButton(),
                    CustomButtonWidget(
                        icon: Icons.info_outline_rounded, title: "info"),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: const [
              MainTitleCard(title: "Released in the past year"),
              MainTitleCard(title: "Trending Now"),
              NumberTitleCard(),
              MainTitleCard(title: "Tense Dramas"),
              MainTitleCard(title: "South Indian Cinema"),
            ],
          ),
        ],
      ),
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      onPressed: () {},
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhiteColor)),
      icon: Icon(
        Icons.play_arrow,
        color: kblackColor,
        size: 28,
      ),
      label: Text(
        "Play    ",
        style: TextStyle(
            fontSize: 18, color: kblackColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
