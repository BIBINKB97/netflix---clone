import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/search/widget/title.dart';

const imagesUrl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/8rpDcsfLJypbO6vREc0547VKqEv.jpg";

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SearchTextTitle(
        title: 'Top Searches',
      ),
      kheight,
      Expanded(
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => TopSearchItemTile(),
          separatorBuilder: (context, index) => kheight20,
          itemCount: 10,
        ),
      )
    ]));
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: screenWidth * 0.4,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imagesUrl),
            ),
          ),
        ),
        Expanded(
            child: Text(
          'Avatar',
          style: TextStyle(
              fontSize: 16, color: kwhiteColor, fontWeight: FontWeight.bold),
        )),
        CircleAvatar(
          backgroundColor: kwhiteColor,
          radius: 20,
          child: CircleAvatar(
            backgroundColor: kblackColor,
            radius: 18,
            child: Icon(
              Icons.play_arrow,
              color: kwhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
