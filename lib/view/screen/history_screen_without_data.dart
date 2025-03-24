import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreenWithoutData extends StatelessWidget {
  const HistoryScreenWithoutData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/empty_amico.png",
              width: responsiveWidth(context, 282),
              height: responsiveHeight(context, 282),
            ),
            SizedBox(
              height: responsiveHeight(context, 51),
            ),
            Text(
              "History Empty",
              style: TextStyle(
                color: Color(0xFF111827),
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: responsiveHeight(context, 12),
            ),
            Text(
              "You don’t have order any foods before",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
