import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  String imagePath;
  String category;

  CategoryWidget({required this.imagePath, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(context, 8),
          vertical: responsiveHeight(context, 8)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          Image.asset(
            width: responsiveWidth(context, 30),
            height: responsiveHeight(context, 30),
            imagePath,
          ),
          SizedBox(
            width: responsiveWidth(context, 6),
          ),
          Text(
            category,
            style: TextStyle(
              color: ConstantColors.TextColor,
              fontSize: 18.sp,
            ),
          )
        ],
      ),
    );
  }
}
