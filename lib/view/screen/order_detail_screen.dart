import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/chat_screen.dart';
import 'package:Foodtik/view/widget/track_order_widget.dart';
import 'package:Foodtik/view/screen/track_order_screen.dart';
import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant_colors.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          AppLocalizations.of(context)!.order_details,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 24),
            vertical: responsiveHeight(context, 24)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/packge.png"),
                  SizedBox(
                    width: responsiveWidth(context, 12),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.order_id,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Text(
                        "#6579-6432",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      Text(
                        "25m",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 300),
                child: TrackOrderWidget(),
              ),
              Row(
                children: [
                  Image.asset("assets/images/driver_phone.png"),
                  SizedBox(
                    width: responsiveWidth(context, 12),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.your_delivery_hero,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 12),
                      ),
                      Row(
                        children: [
                          Text(
                            "Aleksandr V.",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                          SizedBox(
                            width: responsiveWidth(context, 11),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade400,
                          ),
                          SizedBox(
                            width: responsiveWidth(context, 4),
                          ),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 60),
                  ),
                  Image.asset("assets/images/Icon_phone.png"),
                  SizedBox(
                    width: responsiveWidth(context, 12),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ));
                    },
                    child: Image.asset("assets/images/Icon_chat.png"),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 27),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: responsiveWidth(context, 8),
                        right: responsiveWidth(context, 8)),
                    child: Text(
                      AppLocalizations.of(context)!.your_location,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 5),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: ConstantColors.green_background,
                      ),
                      SizedBox(
                        width: responsiveWidth(context, 4),
                      ),
                      Text(
                        "123 Al-Madina Street, Abdali, Amman, Jordan",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 24),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 50),
              ),
              InAppButton(
                  text: AppLocalizations.of(context)!.live_track,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrackOrderScreen(),
                        ));
                  }),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
