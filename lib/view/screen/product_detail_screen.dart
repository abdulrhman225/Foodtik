import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_seekbar/flutter_advanced_seekbar.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant_colors.dart';
import '../../responsive.dart';
import '../widget/search_text_input_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  TextEditingController searchTextEditingController = TextEditingController();
  double valueOfslider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(context, 30),
          vertical: responsiveHeight(context, 23),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveWidth(context, 11),
                      vertical: responsiveHeight(context, 8),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFFF5F5F5),
                    ),
                    child: Icon(
                      Icons.location_pin,
                      color: ConstantColors.green_background,
                      size: 15,
                    )),
                title: Text(
                  "Current location ▾",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
                subtitle: Text(
                  "Jl. Soekarno Hatta 15A Malang",
                  style: TextStyle(
                    color: ConstantColors.TextColor,
                    fontSize: 14.sp,
                  ),
                ),
                trailing: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveWidth(context, 11),
                      vertical: responsiveHeight(context, 8),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFFF5F5F5),
                    ),
                    child: Icon(Icons.notifications_none, size: 15,) ,),
              ),
              SizedBox(
                height: responsiveHeight(context, 22),
              ),
              SearchTextInputWidget(
                hint: "Search menu, restaurant or etc",
                textEditingController: searchTextEditingController,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                suffixIcon: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.filter_alt,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: responsiveHeight(context, 30),
              ),
              Container(
                width: responsiveWidth(context, 370),
                height: responsiveHeight(context, 203),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/delicious_tasty_flying_burger_table_cheese_burger_with.png"),
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Cheeseburger Wendy's Burger",
                  style: TextStyle(
                      color: ConstantColors.TextColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 8),
              ),
              Row(
                children: [
                  StarRating(
                    starCount: 5,
                    rating: 4.5,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 3),
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 3),
                  ),
                  Text(
                    "(89 reviews)",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 8),
              ),
              Row(
                children: [
                  Text(
                    "\$7.99",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: ConstantColors.green_background,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 8),
                  ),
                  Text(
                    "\$9.5",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Text(
                "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Spicy",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Quantity",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
              ]),
              SizedBox(
                height: responsiveHeight(context, 15),
              ),
              Row(
                children: [
                  SizedBox(
                    width: responsiveWidth(context, 169),
                    child: Slider(
                      value: valueOfslider,
                      onChanged: (value) {
                        valueOfslider = value;
                        setState(() {});
                      },
                      activeColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 60),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: responsiveWidth(context, 15),
                          vertical: responsiveHeight(context, 16)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: ConstantColors.green_background)),
                      child: Icon(
                        Icons.minimize,
                        color: ConstantColors.green_background,
                        size: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 20),
                  ),
                  Text(
                    "3",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 20),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: responsiveWidth(context, 15),
                          vertical: responsiveHeight(context, 16)),
                      decoration: BoxDecoration(
                          color: ConstantColors.green_background,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: ConstantColors.green_background)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 7),
              ),
              Row(
                children: [
                  Text(
                    "Mild",
                    style: TextStyle(
                        color: ConstantColors.green_background,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 122),
                  ),
                  Text(
                    "Hot",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 63),
              ),
              InAppButton(text: "Add To Cart", onPress: () {}),
              SizedBox(
                height: responsiveHeight(context, 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
