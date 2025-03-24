import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductWidget extends StatelessWidget {
  String rating;
  String imagePath;
  String productName;
  String productContent;
  String productPrice;

  ProductWidget(
      {required this.rating,
      required this.imagePath,
      required this.productName,
      required this.productContent,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: responsiveWidth(context, 17),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(context, 12),
          vertical: responsiveHeight(context, 8)),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: IntrinsicHeight(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 4),
                  ),
                  Text(
                    rating,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 4),
              ),
              Image.asset(
                imagePath,
                width: responsiveWidth(context, 87),
                height: responsiveHeight(context, 70),
              ),
              SizedBox(
                height: responsiveHeight(context, 11),
              ),
              Text(
                productName,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: ConstantColors.TextColor,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 4),
              ),
              SizedBox(
                width: responsiveWidth(context, 140),
                child: Text(
                  overflow: TextOverflow.fade,
                  productContent,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "\$$productPrice",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ConstantColors.green_background,
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 63),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ConstantColors.green_background),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailScreen(),));
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
