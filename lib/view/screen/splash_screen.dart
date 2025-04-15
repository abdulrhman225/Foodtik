import 'dart:async';

import 'package:Foodtik/controller/design_cubit/design_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  getSavedThemeAndLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String theme = sharedPreferences.getString("theme")??"light";
    String language = sharedPreferences.getString("language")??"english";
    context.read<DesignCubit>().getSavedTheme(theme: theme);
    context.read<DesignCubit>().getSavedLanguage(language: language);
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      checkIfIHaveToGoToWelcomeScreens();
    },);

    getSavedThemeAndLanguage();
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
