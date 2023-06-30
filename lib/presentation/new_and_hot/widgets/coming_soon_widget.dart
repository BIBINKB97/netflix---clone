import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/video_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 450,
          width: 50,
          child: Column(
            children: const [
              Text(
                "FEB",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                "1 1",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: kwhiteColor),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              kheight,
              VideoWidget(),
              kheight,
              Row(
                children: [
                  Text(
                    "The Witcher",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(
                        icon: Icons.notifications,
                        iconsize: 22,
                        title: "Remind me",
                        textsize: 11,
                      ),
                      kWidth,
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info_outlined,
                        iconsize: 22,
                        title: " info",
                        textsize: 11,
                      ),
                      kWidth,
                      kWidth
                    ],
                  ),
                ],
              ),
              kheight,
              Text(
                "Coming on friday",
                style: TextStyle(color: kwhiteColor),
              ),
              kheight,
              Text(
                "The Witcher",
                style: TextStyle(
                    color: kwhiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              kheight,
              Text(
                "Landing the lead in the school musical is a \ndream come true for jodi, until the pressure \nsends her confidence -- and her relationships --\ninto tailspain",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
