import 'package:Foodtik/controller/home_screen_cubit/home_screen_cubit.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
            top: responsiveHeight(context, -25),
            right: responsiveWidth(context, -20),
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
          Positioned.fill(
            top: responsiveHeight(context, -60),
            child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/images/ellipse.png", height: 90)),
          ),
          Positioned.fill(
            top: responsiveHeight(context, -40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                imagePath,
                width: responsiveWidth(context, 74),
                height: responsiveHeight(context, 74),
              ),
            ),
          ),
          SizedBox(height: 8),
          Positioned.fill(
            top: responsiveHeight(context, 65),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: Theme.of(context).colorScheme.secondary,
                  )),
            ),
          ),
          SizedBox(height: 4),
          Positioned.fill(
            child: Center(
              child: Text(description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: 12.sp)),
            ),
          ),
          SizedBox(height: 8),
          Positioned.fill(
            bottom: responsiveHeight(context, 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(price,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: Theme.of(context).colorScheme.secondary,
                  )),
            ),
          ),
          SizedBox(height: 8),
          Positioned.fill(
            bottom: -20,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(AppLocalizations.of(context)!.add_to_cart),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
