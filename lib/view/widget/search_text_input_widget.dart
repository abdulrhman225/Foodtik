import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';

class SearchTextInputWidget extends StatelessWidget {
  String hint;
  String? errorText;
  TextEditingController textEditingController;
  bool obscureText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextInputType? keyboardType;
  int? maxLine;
  bool? enabled;

  SearchTextInputWidget(
      {required this.hint,
        this.errorText,
        required this.textEditingController,
        this.obscureText = false,
        this.enabled = true,
        this.prefixIcon,
        this.suffixIcon,
        this.keyboardType,
        this.maxLine = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(context, 370),
      child: TextField(
        keyboardType: keyboardType,
        maxLines: maxLine,
        controller: textEditingController,
        obscureText: obscureText,
        style: TextStyle(
          color: ConstantColors.TextColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            hintText: hint,
            hintStyle: TextStyle(
                fontSize: 12.sp,
                color: Theme.of(context).colorScheme.onSecondary,
                fontWeight: FontWeight.w700),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            errorText: errorText,
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(40)) ,),
      ),
    );
  }
}
