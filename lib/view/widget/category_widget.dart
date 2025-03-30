import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/controller/home_screen_cubit/home_screen_cubit.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  String imagePath;
  String category;
  int index;
  Color? backgroundColor;
  Color? textColor;

  CategoryWidget({required this.imagePath, required this.category ,  this.backgroundColor ,  this.textColor , required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: responsiveWidth(context, 12)),
      padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(context, 8),
          vertical: responsiveHeight(context, 8)),
      decoration: BoxDecoration(
        color: backgroundColor,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.grey)),
      child: InkWell(
        onTap: (){
          context.read<HomeScreenCubit>().getCategory(productName: category, index: index);
        },
        child: Row(
          children: [
            imagePath != "" ?Image.asset(
              width: responsiveWidth(context, 30),
              height: responsiveHeight(context, 30),
              imagePath,
            ):SizedBox(),
            SizedBox(
              width: responsiveWidth(context, 6),
            ),
            Text(
              category,
              style: TextStyle(
                color: textColor,
                fontSize: 18.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
