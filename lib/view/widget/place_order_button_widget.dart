import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';

class PlaceOrderButtonWidget extends StatelessWidget {
  String text;
  VoidCallback onPress;

  PlaceOrderButtonWidget({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context, 295),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: TextButton(
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
              color: ConstantColors.green_background,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}
