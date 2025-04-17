import 'package:Foodtik/view/screen/track_order_screen.dart';
import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../responsive.dart';
import 'notification_screen.dart';

class FinishOrdingScreen extends StatelessWidget {
  const FinishOrdingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 32),
            vertical: responsiveHeight(context, 30)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: responsiveHeight(context, 20),
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: responsiveWidth(context, 7)),
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
                        size: 18,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    )),
              ),
              Text(
                AppLocalizations.of(context)!.checkout,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 18),
              ),
              Image.asset("assets/images/congratulations_image.png"),
              SizedBox(
                height: responsiveHeight(context, 32),
              ),
              Text(
                AppLocalizations.of(context)!.order_success,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(
                height: responsiveHeight(context, 12),
              ),
              Text(
                AppLocalizations.of(context)!.order_arrival,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(
                height: responsiveHeight(context, 49),
              ),
              Align(
                alignment: Alignment.center,
                child: InAppButton(text: AppLocalizations.of(context)!.track_your_order, onPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TrackOrderScreen(),));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
