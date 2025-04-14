import 'package:Foodtik/controller/home_screen_cubit/home_screen_cubit.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherCategoryScreen extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;
  final String price;
  final bool isFavorite;
  VoidCallback onTap;

  // Constructor لتلقي القيم من الـ Widget الأم
  OtherCategoryScreen({
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
    required this.isFavorite,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: responsiveWidth(context, 10),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: responsiveWidth(context, 12),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -20,
            right: -15,
            child: InkWell(
              onTap: onTap,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: responsiveHeight(context, 15),
                      horizontal: responsiveWidth(context, 12)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Theme.of(context).colorScheme.secondaryFixed,
                  ),
                  child: isFavorite
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 15,
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).colorScheme.onSecondary,
                          size: 15,
                        ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -50,
            child: Center(
              child: Image.asset("assets/images/ellipse.png", height: 90),
            ),
          ),
          Positioned(
            top: -35,
            child: Center(
              child: Image.asset(
                imagePath,
                width: responsiveWidth(context, 74),
                height: responsiveHeight(context, 74),
              ),
            ),
          ),
          SizedBox(height: 8),
          Positioned(
            top: 60,
            child: Text(name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Theme.of(context).colorScheme.secondary,
                )),
          ),
          SizedBox(height: 4),
          Positioned(
            left: 0,
            right: 0,
            child: Text(description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 12)),
          ),
          SizedBox(height: 8),
          Positioned(
            bottom: 50,
            child: Text(price,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.secondary,
                )),
          ),
          SizedBox(height: 8),
          Positioned(
            bottom: -20,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Order Now"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
