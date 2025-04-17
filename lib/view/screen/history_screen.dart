import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/history_screen_without_data.dart';
import 'package:Foodtik/view/widget/product_in_cart_widget.dart';
import 'package:Foodtik/view/widget/product_in_history_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreen extends StatefulWidget {
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List data = [
    {
      "image_path":
          "assets/images/delicious_tasty_flying_burger_table_cheese_burger_with.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce"
    },
    {
      "image_path":
          "assets/images/delicious_tasty_flying_burger_table_cheese_burger_with.png",
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
      "image_path":
          "assets/images/delicious_tasty_flying_burger_table_cheese_burger_with.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce"
    },
    {
      "image_path":
          "assets/images/delicious_tasty_flying_burger_table_cheese_burger_with.png",
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

  bool loadMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: data.isEmpty? HistoryScreenWithoutData() :Padding(
        padding:  EdgeInsets.symmetric(
            vertical: responsiveHeight(context, 20),
            horizontal: responsiveWidth(context, 20)
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            if (!loadMore && index == 3) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: responsiveHeight(context, 42),),
                  InkWell(
                    onTap: (){
                      loadMore = true;
                      setState(() {});
                    },
                    child: Text(
                      AppLocalizations.of(context)!.load_more,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: ConstantColors.green_background,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return ProductInHistoryWidget(
                imagePath: data[index]["image_path"],
                productName: data[index]["product_Name"],
                product_price: data[index]["product_price"],
                product_section: "Burger Factory LTD",
                date: "25.3.2024",
              );
            }
          },
          itemCount: loadMore ? data.length : 4,
        ),
      ) ,
    );
  }
}
