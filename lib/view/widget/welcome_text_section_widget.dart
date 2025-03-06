import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../responsive.dart';

class WelcomeTextSectionWidget extends StatelessWidget {
  String title;
  String subTitle;
  FontWeight? fontWeight;

  WelcomeTextSectionWidget({required this.title, required this.subTitle , this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: fontWeight ,
            color: Color(0xFF455A64),
          ),
        ),
        SizedBox(height: responsiveHeight(context, 8),),
        SizedBox(
          width: responsiveWidth(context, 335),
          height: responsiveHeight(context, 158),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF455A64),
              fontSize: 16.sp,
            ),
          ),
        )
      ],
    );
  }
}
