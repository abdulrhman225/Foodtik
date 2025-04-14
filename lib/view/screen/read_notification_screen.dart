import 'package:flutter/material.dart';

import '../../responsive.dart';

class ReadNotificationScreen extends StatelessWidget {
  List readNotification = [
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
      color: Theme.of(context).colorScheme.secondaryFixed,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              readNotification[index]["title"],
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1F36),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(readNotification[index]["description"],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1A1F36),
                    )),
                SizedBox(
                  height: responsiveHeight(context, 8),
                ),
                Text(readNotification[index]["date"],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ))
              ],
            ),
          );
        },
        itemCount: readNotification.length,
      ),
    );
  }
}
