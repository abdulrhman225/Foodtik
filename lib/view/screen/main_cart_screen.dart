import 'package:Foodtik/view/screen/cart_screen.dart';
import 'package:Foodtik/view/screen/filter_screen.dart';
import 'package:Foodtik/view/screen/location_screen.dart';
import 'package:Foodtik/view/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constant_colors.dart';
import '../../responsive.dart';
import 'history_screen.dart';
import 'notification_screen.dart';

class MainCartScreen extends StatelessWidget {
  const MainCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: ListTile(
              leading: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: responsiveWidth(context, 11),
                    vertical: responsiveHeight(context, 8),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).colorScheme.secondaryFixed,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(),));
                    },
                    child: Icon(
                      Icons.location_pin,
                      color: ConstantColors.green_background,
                      size: 15,
                    ),
                  )),
              title: Text(
                "Current location ▾",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              subtitle: Text(
                "Jl. Soekarno Hatta 15A Malang",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
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
                    color: Theme.of(context).colorScheme.secondaryFixed,
                  ),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        builder: (context) {
                          return SizedBox(
                              height: responsiveHeight(context, 600),
                              child: NotificationScreen()
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.notifications_none,
                      color: Theme.of(context).colorScheme.onSecondary,
                      size: 15,
                    ),
                  )),
            ),
            bottom: TabBar(
                dividerColor:  Theme.of(context).colorScheme.secondaryFixed,
                indicatorColor: ConstantColors.green_background,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ConstantColors.green_background,
                unselectedLabelColor: Theme.of(context).colorScheme.onSecondary,
                tabs: [
                  Tab(
                    text: AppLocalizations.of(context)!.cart,
                  ),
                  Tab(
                    text: AppLocalizations.of(context)!.history,
                  )
                ]),
          ),
          body: TabBarView(
            children: [
              CartScreen(),
              HistoryScreen(),
            ],
          )),
    );
  }
}
