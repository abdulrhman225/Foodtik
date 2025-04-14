import 'package:Foodtik/view/screen/all_notification_screen.dart';
import 'package:Foodtik/view/screen/read_notification_screen.dart';
import 'package:Foodtik/view/screen/unread_notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant_colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back , color: Theme.of(context).colorScheme.onSecondary,)),
          title: Text(
            "Notification",
            style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Icon(Icons.more_vert , color: Theme.of(context).colorScheme.onSecondary,),
            )
          ],
          bottom: TabBar(
              dividerColor:  Theme.of(context).colorScheme.secondaryFixed,
              indicatorColor: ConstantColors.green_background,
              labelColor: ConstantColors.green_background,
              unselectedLabelColor: Theme.of(context).colorScheme.onSecondary,
              tabs: [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Unread",
                ),
                Tab(
                  text: "Read",
                )
              ]),
        ),
        body: TabBarView(children: [
          AllNotificationScreen(),
          UnreadNotificationScreen(),
          ReadNotificationScreen(),
        ]),
      ),
    );
  }
}
