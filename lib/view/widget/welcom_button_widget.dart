import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/responsive.dart';

class WelcomeButtonWidget extends StatelessWidget {
  String text;
  VoidCallback onPress;

  WelcomeButtonWidget({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context, 307),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(69),
          gradient: LinearGradient(
              colors: [Color(0xFF25AE4B), Color(0xFF0F481F)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
