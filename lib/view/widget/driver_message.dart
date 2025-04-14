import 'package:Foodtik/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../responsive.dart';

class DriverMessage extends StatelessWidget {
  String driver_message;

  DriverMessage({required this.driver_message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: responsiveHeight(context, 15)
      ),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryFixed,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Text(
        driver_message,
        style: TextStyle(
          fontSize: 13.sp,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
