import 'package:flutter/material.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF25AE4B),
      body: Image.asset(
        "assets/images/splash_background.png",
      ),
    );
  }
}
