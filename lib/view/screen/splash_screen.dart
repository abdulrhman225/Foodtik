import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/view/screen/login_screen.dart';

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
      checkIfIHaveToGoToWelcomeScreens();
    },);
  }

  checkIfIHaveToGoToWelcomeScreens() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.getString("welcome") == null){
      Navigator.push(context, MaterialPageRoute(builder: (context) => FirstWelcomeScreen(),));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.green_background,
      body: Stack(children: [
        Image.asset(
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
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
