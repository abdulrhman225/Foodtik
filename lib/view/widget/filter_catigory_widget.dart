import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterCatigoryWidget extends StatelessWidget {
  String text;
  Color textColor;
  Color color;

  FilterCatigoryWidget(
      {required this.text, required this.color, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:responsiveWidth(context, 9),
    ),
      padding: EdgeInsets.symmetric(
        horizontal: responsiveWidth(context, 9),
        vertical: responsiveHeight(context, 9)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: color,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
