import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/constant_colors.dart';

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
            color: ConstantColors.TextColor,
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
              color: Colors.grey,
              fontSize: 16.sp,
            ),
          ),
        )
      ],
    );
  }
}
