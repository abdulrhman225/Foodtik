import 'package:flutter/material.dart';
import 'package:Foodtik/constant_colors.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.green_background,
      body: Image.asset(
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        "assets/images/splash_background.png",
      ),
    );
  }
}
