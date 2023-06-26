import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.icon,
    required this.title,
    super.key,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
          color: kwhiteColor,
        ),
        Text(
          title,
          style: TextStyle(
              color: kwhiteColor, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}
