import 'package:flutter/material.dart';
import 'package:netflix/presentation/widget/main_title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          MainTitle(title: "Released in the past year"),
        ],
      ),
    );
  }  
}
