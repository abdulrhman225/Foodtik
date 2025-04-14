import 'package:Foodtik/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomThemes {
  final lightTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Colors.white,
      onPrimary:Colors.white ,
      secondary: ConstantColors.TextColor,
      onSecondary: Colors.grey,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.white,
      secondaryFixed: Color(0xFFDBF4D1),
      onSurface: Colors.grey,),
    primarySwatch: Colors.blue,
    textTheme:
    Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
  );

  final darkTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Colors.grey.shade700,
      onPrimary:Colors.grey.shade700 ,
      secondary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.red,
      secondaryFixed: Color(0xFFB8C8AF),
      surface: Colors.white,
      onSurface: Colors.grey,),
    primarySwatch: Colors.blue,
    textTheme:
    Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
  );
}