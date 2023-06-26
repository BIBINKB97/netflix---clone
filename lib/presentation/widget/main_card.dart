import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10, top: 2),
      child: Container(
        width: 130,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w220_and_h330_face/3IhGkkalwXguTlceGSl8XUJZOVI.jpg"))),
      ),
    );
  }
}
