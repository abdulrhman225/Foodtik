import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';

class InAppButton extends StatelessWidget {
  String text;
  VoidCallback onPress;

  InAppButton({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context, 295),
      height: responsiveHeight(context, 48),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ConstantColors.green_background,
      ),
      child: TextButton(
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}
