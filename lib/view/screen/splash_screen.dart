import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'first_welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => FirstWelcomeScreen(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF25AE4B),
      body: Stack(children: [
        Image.asset(
          "assets/images/splash_background.png",
        ),
        Center(
          child: Text(
              "Foodtik",
              style: TextStyle(
                  fontFamily: "ProtestRiot",
                  fontSize: 80.sp,
                  color: Colors.white),
            ),
        ),
      ]),
    );
  }
}
