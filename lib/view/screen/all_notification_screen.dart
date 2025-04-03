import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';

class AllNotificationScreen extends StatelessWidget {
  List allNotification = [
    {
      "title": "Delayed Order:",
      "description":
          "We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience!",
      "date": "Last Wednesday at 9:42 AM",
    },
    {
      "title": "Delayed Order:",
      "description":
          "We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience!",
      "date": "Last Wednesday at 9:42 AM",
    },
    {
      "title": "Delayed Order:",
      "description":
          "We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience!",
      "date": "Last Wednesday at 9:42 AM",
    },
    {
      "title": "Delayed Order:",
      "description":
          "We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience!",
      "date": "Last Wednesday at 9:42 AM",
    },
    {
      "title": "Delayed Order:",
      "description":
          "We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience!",
      "date": "Last Wednesday at 9:42 AM",
    },
    {
      "title": "Delayed Order:",
      "description":
          "We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience!",
      "date": "Last Wednesday at 9:42 AM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF1F6FC),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              allNotification[index]["title"],
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1F36),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(allNotification[index]["description"],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1A1F36),
                    )),
                SizedBox(
                  height: responsiveHeight(context, 8),
                ),
                Text(allNotification[index]["date"],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ))
              ],
            ),
          );
        },
        itemCount: allNotification.length,
      ),
    );
  }
}
