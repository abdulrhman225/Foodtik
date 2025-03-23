import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/filter_screen.dart';
import 'package:Foodtik/view/widget/banner_widget.dart';
import 'package:Foodtik/view/widget/category_widget.dart';
import 'package:Foodtik/view/widget/product_widget.dart';
import 'package:Foodtik/view/widget/recommended_product_widget.dart';
import 'package:Foodtik/view/widget/text_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../widget/search_text_input_widget.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchTextEditingController = TextEditingController();

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
                  child: SvgPicture.asset(
                    "assets/images/location_pin.svg",
                  ),
                ),
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
                  child: SvgPicture.asset(
                    "assets/images/notification_bell.svg",
                  ),
                ),
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
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen(),));
                    },
                    child: Icon(
                      Icons.filter_alt,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: responsiveHeight(context, 30),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: responsiveWidth(context, 14),
                          vertical: responsiveHeight(context, 13)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: ConstantColors.green_background,
                      ),
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 12),
                    ),
                    CategoryWidget(
                      imagePath: "assets/images/burger.png",
                      category: "Burger",
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 12),
                    ),
                    CategoryWidget(
                      imagePath: "assets/images/pizza.png",
                      category: "Pizza",
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 12),
                    ),
                    CategoryWidget(
                      imagePath: "assets/images/sandwich.png",
                      category: "Sandwich",
                    ),
                  ],
                ),
              ),
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
                  "Top Rated",
                  style: TextStyle(
                    color: ConstantColors.TextColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 300),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ProductWidget(
                      rating: "3.8",
                      imagePath: data[index]["image_path"],
                      productName: data[index]["product_Name"],
                      productContent: data[index]["product_content"],
                      productPrice: data[index]["product_price"],
                    );
                  },
                  itemCount: data.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 15),
              ),
              Row(
                children: [
                  Text(
                    "Recommend",
                    style: TextStyle(
                      color: Color(0xFF391713),
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
                      "View All",
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
              SizedBox(
                height: responsiveHeight(context, 128),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return RecommendedProductWidget(
                        Image: data1[index]["image_path"],
                        price: data1[index]["product_price"]);
                  },
                  itemCount: data1.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
