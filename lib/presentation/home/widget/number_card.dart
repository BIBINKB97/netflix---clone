import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
              height: 150,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/oLRQP5cEjiT1DxeIHUYEV96Ijum.jpg"))),
            ),
          ],
        ),
        Positioned(
          top: 83,
          child: BorderedText(
            strokeWidth: 3.0,
            strokeColor: Colors.white,
            child: Text(
              "${index + 1}",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 151.8,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
