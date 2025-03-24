import 'package:Foodtik/view/screen/cart_screen_without_data.dart';
import 'package:Foodtik/view/widget/product_in_cart_widget.dart';
import 'package:Foodtik/view/widget/total_price_card_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data.isEmpty? CartScreenWithoutData():Stack(
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return ProductInCartWidget(
                imagePath: data[index]["image_path"],
                productName: data[index]["product_Name"],
                product_price: data[index]["product_price"],
                product_section: "Burger Factory LTD",
              );
            },
            itemCount: data.length,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TotalPriceCardWidget(),
          )
        ],

      ) ,
    );
  }
}
