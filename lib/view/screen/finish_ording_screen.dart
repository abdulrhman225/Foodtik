import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../responsive.dart';

class FinishOrdingScreen extends StatelessWidget {
  const FinishOrdingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 32),
            vertical: responsiveHeight(context, 30)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: responsiveHeight(context, 20),
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: responsiveWidth(context, 7)),
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveWidth(context, 11),
                      vertical: responsiveHeight(context, 8),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFFF5F5F5),
                    ),
                    child: Icon(
                      Icons.notifications_none,
                      size: 18,
                    )),
              ),
              Text(
                "Checkout",
                style: TextStyle(
                  color: Color(0xFF391713),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 18),
              ),
              Image.asset("assets/images/congratulations_image.png"),
              SizedBox(
                height: responsiveHeight(context, 32),
              ),
              Text(
                "Your Order Done Successfully",
                style: TextStyle(
                  color: Color(0xFF391713),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(
                height: responsiveHeight(context, 12),
              ),
              Text(
                "you will get your order within 12min.thanks for using our services",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF391713),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(
                height: responsiveHeight(context, 49),
              ),
              InAppButton(text: "track Your Order", onPress: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
