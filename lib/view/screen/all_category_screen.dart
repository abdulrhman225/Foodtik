import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant_colors.dart';
import '../../responsive.dart';
import '../widget/banner_widget.dart';
import '../widget/product_widget.dart';
import '../widget/recommended_product_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AllCategoryScreen extends StatelessWidget {
  List data = [
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce"
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce"
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce"
    },
  ];

  List data1 = [
    {
      "image_path": "assets/images/sushi.png",
      "product_price": "20.00",
    },
    {
      "image_path": "assets/images/sushi.png",
      "product_price": "20.00",
    },
    {
      "image_path": "assets/images/sushi.png",
      "product_price": "20.00",
    },
    {
      "image_path": "assets/images/sushi.png",
      "product_price": "20.00",
    },
    {
      "image_path": "assets/images/sushi.png",
      "product_price": "20.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: responsiveHeight(context, 22),
        ),
        BannerWidget(),
        SizedBox(
          height: responsiveHeight(context, 5),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            AppLocalizations.of(context)!.top_rated,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              data.length,
                  (index) {
                return ProductWidget(
                  rating: "3.8",
                  imagePath: data[index]["image_path"],
                  productName: data[index]["product_Name"],
                  productContent: data[index]["product_content"],
                  productPrice: data[index]["product_price"],
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: responsiveHeight(context, 15),
        ),
        Row(
          children: [
            Text(
              AppLocalizations.of(context)!.recommend,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: responsiveWidth(context, 202),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                AppLocalizations.of(context)!.view_all,
                style: TextStyle(
                  color: ConstantColors.green_background,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: responsiveWidth(context, 13),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: ConstantColors.green_background,
              size: 9,
            )
          ],
        ),
        SizedBox(
          height: responsiveHeight(context, 11),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              data1.length,
                  (index) {
                return RecommendedProductWidget(
                    Image: data1[index]["image_path"],
                    price: data1[index]["product_price"]);
              },
            ),
          ),
        ),
        SizedBox(
          height: responsiveHeight(context, 20),
        ),
      ],
    );
  }
}
