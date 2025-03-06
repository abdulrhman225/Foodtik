import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/responsive.dart';

import '../widget/welcom_button_widget.dart';
import '../widget/welcome_text_section_widget.dart';

class TurnLocationOnScreen extends StatelessWidget {
  const TurnLocationOnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/maps.png",
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 251),
            width: responsiveWidth(context, 434),
            height: responsiveHeight(context, 681),
          ),
          Container(
            margin: EdgeInsets.only(top: 209),
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
                SizedBox(
                  height: responsiveHeight(context, 254),
                ),
                Image.asset(
                  width: responsiveWidth(context, 328),
                  height: responsiveHeight(context, 219),
                  "assets/images/take_away_cuate.png",
                ),
                SizedBox(
                  height: responsiveHeight(context, 40),
                ),
                WelcomeTextSectionWidget(
                  fontWeight: FontWeight.w700,
                  title: "Turn On Your Location",
                  subTitle:
                      "to continues, let your device turn on location, which uses google’s location service",
                ),
                SizedBox(
                  height: responsiveHeight(context, 14),
                ),
                WelcomeButtonWidget(
                  text: "Yes, Turn It On",
                  onPress: () {},
                ),
                SizedBox(
                  height: responsiveHeight(context, 14),
                ),
                Container(
                  height: responsiveHeight(context, 48),
                  width: responsiveWidth(context, 307),
                  decoration: BoxDecoration(
                    color: Color(0xFFC2C2C2),
                    borderRadius: BorderRadius.circular(69),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
