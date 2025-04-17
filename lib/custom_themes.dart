import 'package:Foodtik/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomThemes {
  final lightTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Colors.grey,
      onPrimary: Colors.black,
      secondary: ConstantColors.TextColor,
      onSecondary: Colors.grey,
      inversePrimary: Colors.white,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.white,
      secondaryFixed: Color(0xFFDBF4D1),
      onSurface: Colors.grey,
    ),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: Colors.white,
      dayStyle: TextStyle(color: Colors.black),
      yearStyle: TextStyle(color: Colors.black),
      headerBackgroundColor: Colors.white,
      headerForegroundColor: Colors.black,
      weekdayStyle: TextStyle(color: Colors.grey),
    ),
    primarySwatch: Colors.blue,
    textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
  );

  final darkTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Colors.white,
      onPrimary: Colors.grey.shade700,
      inversePrimary: Colors.grey.shade700,
      secondary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.red,
      secondaryFixed: Color(0xFFB8C8AF),
      surface: Colors.black,
      onSurface: Colors.grey,
    ),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: Colors.grey.shade700,
      dayStyle: TextStyle(color: Colors.white),
      yearStyle: TextStyle(color: Colors.black),
      headerBackgroundColor: Colors.grey.shade700,
      headerForegroundColor: Colors.white,
      weekdayStyle: TextStyle(color: Colors.grey),
    ),
    primarySwatch: Colors.blue,
    textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
  );
}
