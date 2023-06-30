import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widget/number_title_card.dart';
import 'package:netflix/presentation/widget/main_title_card.dart';
import 'widget/background_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, value, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: const [
                      Column(
                        children: [
                          BackgroundCard(),
                          kheight,
                          MainTitleCard(title: "Released in the past year"),
                          kheight,
                          MainTitleCard(title: "Trending Now"),
                          kheight,
                          NumberTitleCard(),
                          kheight,
                          MainTitleCard(title: "Tense Dramas"),
                          kheight,
                          MainTitleCard(title: "South Indian Cinema"),
                        ],
                      ),
                    ],
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: Duration(milliseconds: 1000),
                          width: double.infinity,
                          height: 90,
                          color: Colors.black.withOpacity(0.4),
                          child: Column(children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://www.pngarts.com/files/1/Netflix-Logo-PNG-Transparent-Image.png",
                                  height: 60,
                                  width: 70,
                                ),
                                Spacer(),
                                Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                kWidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kWidth,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "TV Shows",
                                  style: khomeTitleText,
                                ),
                                Text(
                                  "Movies",
                                  style: khomeTitleText,
                                ),
                                Text(
                                  "Categories",
                                  style: khomeTitleText,
                                ),
                              ],
                            )
                          ]),
                        )
                      : kheight,
                ],
              ),
            );
          }),
    );
  }
}
