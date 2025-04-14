import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProductInCartWidget extends StatelessWidget {
  String imagePath;
  String productName;
  String product_price;
  String product_section;

  ProductInCartWidget({
    required this.imagePath,
    required this.productName,
    required this.product_price,
    required this.product_section,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(
          left: responsiveWidth(context, 20),
          right: responsiveWidth(context, 20),
          top: responsiveHeight(context, 24)
      ),
      padding:  EdgeInsets.symmetric(
          horizontal: responsiveWidth(context, 11),
          vertical: responsiveHeight(context, 11)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Theme.of(context).colorScheme.secondaryFixed)
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          extentRatio: 0.2,
          children: [
            SlidableAction(
              autoClose: true,
              borderRadius: BorderRadius.circular(7),
              onPressed: (context) {},
              backgroundColor: Color(0xFFFDAC1D),
              icon: Icons.delete_outline,
              foregroundColor: Colors.white,
      
            )
          ],
        ),
        child: ListTile(
          leading: Container(
            width: responsiveWidth(context, 62),
            height: responsiveHeight(context, 62),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                )),
          ),
          title: Text(
            productName,
            style: TextStyle(
              fontSize: 15.sp,
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product_section,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "\$ $product_price",
                style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w700,
                    color: ConstantColors.green_background),
              ),
            ],
          ),
          trailing: IntrinsicWidth(
            child: IntrinsicHeight(
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: responsiveWidth(context, 12),
                          vertical: responsiveHeight(context, 12)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: ConstantColors.green_background)),
                      child: Icon(
                        Icons.minimize,
                        color: ConstantColors.green_background,
                        size: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 10),
                  ),
                  Text(
                    "3",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 10),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: responsiveWidth(context, 12),
                          vertical: responsiveHeight(context, 12)),
                      decoration: BoxDecoration(
                          color: ConstantColors.green_background,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: ConstantColors.green_background)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
