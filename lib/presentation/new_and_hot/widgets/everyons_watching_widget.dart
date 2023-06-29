import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        kheight,
        Text(
          "SpiderMan",
          style: TextStyle(
              color: kwhiteColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          "Miles Morales is juggling his life between being a high \nschool student and being a spider-man. When Wilson Kingpin Fisk uses a super collider, others from across the Spider-Verse are transported  to this dimension.",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        kheight50,
        VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              icon: Icons.share,
              iconsize: 25,
              title: "Share",
              textsize: 15,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              iconsize: 25,
              title: "My List",
              textsize: 15,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              iconsize: 25,
              title: "play",
              textsize: 15,
            ),
            kWidth,
          ],
        )
      ],
    );
  }
}
