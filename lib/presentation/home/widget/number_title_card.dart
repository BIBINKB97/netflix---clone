import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widget/number_card.dart';
import '../../widget/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 2),
          child: MainTitle(
            title: "Top 10 Tv Shows In India Today",
          ),
        ),
        LimitedBox(
            maxHeight: 200,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    10,
                    (index) => NumberCard(
                          index: index,
                        ))))
      ],
    );
  }
}
