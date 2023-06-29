import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.icon,
    required this.title,
    this.iconsize = 28,
    this.textsize = 18,
    super.key,
  });
  final IconData icon;
  final String title;
  final double iconsize;
  final double textsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconsize,
          color: kwhiteColor,
        ),
        Text(
          title,
          style: TextStyle(
              color: kwhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: textsize),
        ),
      ],
    );
  }
}
