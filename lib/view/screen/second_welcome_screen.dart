import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/third_welcome_screen.dart';

import '../widget/skip_widget.dart';
import '../widget/welcom_button_widget.dart';
import '../widget/welcome_text_section_widget.dart';

class SecondWelcomeScreen extends StatelessWidget {
  const SecondWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
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
            child: Column(
              children: [
                SizedBox(height: responsiveHeight(context, 254),),
                Image.asset(
                  width: responsiveWidth(context, 328),
                  height: responsiveHeight(context, 219),
                  "assets/images/take_away_cuate.png",
                ),
                SizedBox(
                  height: responsiveHeight(context, 40),
                ),
                WelcomeTextSectionWidget(
                  title: "Get Delivery On Time",
                  subTitle:
                  "order your favorite food within the plam of your hand and the zone of your comfort",
                ),
                WelcomeButtonWidget(
                  text: "Continue",
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdWelcomeScreen(),));

                  },
                ),
                SizedBox(
                  height: responsiveHeight(context, 81),
                ),
                SkipWidget(index: 2)
              ],
            ),
          )
        ],
      ),
    );
  }
}
