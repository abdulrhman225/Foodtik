import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedProductWidget extends StatelessWidget {

  String image;
  String price;

  RecommendedProductWidget({required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: responsiveWidth(context, 27)
      ),
      width: responsiveWidth(context, 72),
      height: responsiveHeight(context, 120),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19.12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                image
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Container(
            margin: EdgeInsets.only(bottom: responsiveHeight(context, 20)),
            padding: EdgeInsets.symmetric(
              vertical: responsiveHeight(context, 8),
              horizontal: responsiveWidth(context, 8)
            ),
            decoration: BoxDecoration(
                color: ConstantColors.green_background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
            ),
            child: Text(
              "\$$price",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
