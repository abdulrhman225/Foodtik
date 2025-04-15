import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/widget/place_order_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TotalPriceCardWidget extends StatelessWidget {

  VoidCallback onPress;

    TotalPriceCardWidget({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: responsiveHeight(context, 10),
        horizontal: responsiveWidth(context, 10),
      ),
      margin: EdgeInsets.symmetric(
        vertical: responsiveHeight(context, 30),
        horizontal: responsiveWidth(context, 20),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: ConstantColors.green_background,
        image: DecorationImage(
          image: AssetImage("assets/images/total_price_card_pattern.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: IntrinsicHeight(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.sub_total,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "100\$",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: responsiveHeight(context, 6),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.delivery_charge,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "10\$",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: responsiveHeight(context, 6),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.discount,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "10\$",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: responsiveHeight(context, 6),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${AppLocalizations.of(context)!.total}:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "110\$",
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            SizedBox(height: responsiveHeight(context, 24),),

            PlaceOrderButtonWidget(text: AppLocalizations.of(context)!.place_my_order, onPress: onPress,),
          ],
        ),
      ),
    );
  }
}
