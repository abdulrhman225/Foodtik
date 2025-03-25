import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';

class FindLocationTextInputWidget extends StatelessWidget {
  String hint;
  String label;
  String? errorText;
  TextEditingController textEditingController;
  bool obscureText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextInputType? keyboardType;
  int? maxLine;
  bool? enabled;

  FindLocationTextInputWidget({required this.hint,
    required this.label,
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
        width: responsiveWidth(context, 295),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white
        ),
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
          color: Color(0xFF878787),
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        hintText: hint,
        hintStyle: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w700),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        label: Text(
          label,
          style: TextStyle(
              fontSize: 12.sp,
              color: Color(0xFF878787),
              fontWeight: FontWeight.w700),
        ),
        errorText: errorText,
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(40))),)
    ,
    );
  }
}
