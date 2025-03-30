import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmDialog extends StatelessWidget {

  VoidCallback onPress;

  ConfirmDialog({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: responsiveHeight(context, 24),
              horizontal: responsiveWidth(context, 24)),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , color: Colors.white),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Text(
                  "Are you sure you want to remove it from favorites?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: responsiveHeight(context, 24),),
                InAppButton(text: "Yes", onPress: onPress)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
