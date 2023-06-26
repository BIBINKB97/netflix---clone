import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: DecorationImage(
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w220_and_h330_face/3IhGkkalwXguTlceGSl8XUJZOVI.jpg"))),
    );
  }
}
