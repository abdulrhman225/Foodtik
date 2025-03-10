import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/second_welcome_screen.dart';


import '../widget/skip_widget.dart';
import '../widget/welcom_button_widget.dart';
import '../widget/welcome_text_section_widget.dart';

class FirstWelcomeScreen extends StatelessWidget {
  const FirstWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            "assets/images/pattern.png",
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: responsiveHeight(context, 251)),
            width: responsiveWidth(context, 434),
            height: responsiveHeight(context, 681),
          ),
          Container(
            margin: EdgeInsets.only(top: responsiveHeight(context, 209)),
            width: double.infinity,
            height: responsiveHeight(context, 103),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.67, 0.1]),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: responsiveHeight(context, 150)),
                    child: Image.asset(
                      width: responsiveWidth(context, 328),
                      height: responsiveHeight(context, 328),
                      "assets/images/order_food_pan.png",
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 40),
                  ),
                  WelcomeTextSectionWidget(
                    title: "welcome to sahlah",
                    subTitle:
                        "enjoy a fast and smooth food delivery at your doorstep",
                  ),
                  WelcomeButtonWidget(
                    text: "Continue",
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondWelcomeScreen(),));
              
                    },
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 81),
                  ),
                  SkipWidget(index: 1)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
