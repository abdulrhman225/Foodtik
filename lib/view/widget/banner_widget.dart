import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Image.asset(
              "assets/images/banner.png"
          ),
          SizedBox(height: responsiveHeight(context, 5),),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: responsiveHeight(context, 4),
                width: responsiveWidth(context, 20),
                decoration: BoxDecoration(
                  color: Color(0xFFDBF4D1),
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
              SizedBox(width: responsiveWidth(context, 4),),
              Container(
                height: responsiveHeight(context, 4),
                width: responsiveWidth(context, 20),
                decoration: BoxDecoration(
                    color: Color(0xFFDBF4D1),
                    borderRadius: BorderRadius.circular(12)
                ),
              ),
              SizedBox(width: responsiveWidth(context, 4),),
              Container(
                height: responsiveHeight(context, 4),
                width: responsiveWidth(context, 20),
                decoration: BoxDecoration(
                  color: ConstantColors.green_background,
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
              SizedBox(width: responsiveWidth(context, 4),),
              Container(
                height: responsiveHeight(context, 4),
                width: responsiveWidth(context, 20),
                decoration: BoxDecoration(
                    color: Color(0xFFDBF4D1),
                    borderRadius: BorderRadius.circular(12)
                ),
              ),
              SizedBox(width: responsiveWidth(context, 4),),
              Container(
                height: responsiveHeight(context, 4),
                width: responsiveWidth(context, 20),
                decoration: BoxDecoration(
                    color: Color(0xFFDBF4D1),
                    borderRadius: BorderRadius.circular(12)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
