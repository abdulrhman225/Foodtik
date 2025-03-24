import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProductInHistoryWidget extends StatelessWidget {
  String imagePath;
  String productName;
  String product_price;
  String product_section;
  String date;

  ProductInHistoryWidget({
    required this.imagePath,
    required this.productName,
    required this.product_price,
    required this.product_section,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: responsiveHeight(context, 24)),
      padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(context, 11),
          vertical: responsiveHeight(context, 11)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Color(0xFFDBF4D1))),
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
                  color: Colors.grey,
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
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.history_toggle_off , size: 12, color: ConstantColors.green_background,),
                      SizedBox(width: responsiveWidth(context, 4),),
                      Text(
                        date,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: responsiveHeight(context, 13),),
                  Row(
                    children: [
                      Icon(
                        Icons.redo_rounded,
                        color: ConstantColors.green_background,
                        size: 12,
                      ),
                      SizedBox(width: responsiveWidth(context, 4),),
                      Text(
                        "Reorder",
                        style: TextStyle(
                          color: ConstantColors.green_background,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
