import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../responsive.dart';

class PhoneNumberPicker  extends StatelessWidget {
  String hint;
  String label;
  String? errorText;
  TextEditingController textEditingController;
  bool obscureText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  String contryCode;
  TextInputType? keyboardType;
  int? maxLine;

  bool? enabled;

  PhoneNumberPicker(
      {required this.hint,
        required this.label,
        this.errorText,
        required this.textEditingController,
        this.obscureText = false,
        this.enabled = true,
        this.prefixIcon,
        this.suffixIcon,
        this.keyboardType,
        required this.contryCode,
        this.maxLine = 1});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: responsiveWidth(context, 295),
      child: IntlPhoneField(
        controller: textEditingController,
        onChanged: (value) {
          contryCode = value.countryCode;
        },
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hint,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            label: Text(
              label,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700),
            ),
            errorText: errorText,
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );;
  }
}
