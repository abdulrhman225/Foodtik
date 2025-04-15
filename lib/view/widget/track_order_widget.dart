import 'package:Foodtik/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TrackOrderWidget extends StatelessWidget {
  const TrackOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
        theme: TimelineThemeData(
            nodePosition: 0,
            connectorTheme: ConnectorThemeData(
                thickness: 3.0, color: ConstantColors.green_background),
            indicatorTheme: IndicatorThemeData(
                size: 30.0, color: ConstantColors.green_background),
            color: ConstantColors.green_background),
        builder: TimelineTileBuilder.connected(
          connectionDirection: ConnectionDirection.before,
          itemCount: 4,
          contentsBuilder: (_, index) {
            if(index == 0){
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  AppLocalizations.of(context)!.order_received,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              );
            }
            if(index == 1){
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  AppLocalizations.of(context)!.cooking_order,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              );
            }
            if(index == 2){
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  AppLocalizations.of(context)!.courier_pickup,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              );
            }
            if(index == 3){
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  AppLocalizations.of(context)!.order_delivered,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              );
            }
          },
          indicatorBuilder: (_, index) {
            if(index == 0){
              return DotIndicator(
                color: ConstantColors.green_background,
                child: Icon(
                  Icons.check,
                  size: 20.0,
                  color: Colors.white,
                ),
              );
            }
            if(index == 1){
              return DotIndicator(
                color: ConstantColors.green_background,
                child: Icon(
                  Icons.payment,
                  size: 20.0,
                  color: Colors.white,
                ),
              );
            }
            if(index == 2){
              return DotIndicator(
                color: ConstantColors.green_background,
                child: Icon(
                  Icons.person,
                  size: 20.0,
                  color: Colors.white,
                ),
              );
            }
            if(index == 3){
              return DotIndicator(
                color: ConstantColors.green_background,
                child: Icon(
                  Icons.home,
                  size: 20.0,
                  color: Colors.white,
                ),
              );
            }
          },
          connectorBuilder: (_, index, __) {
            return SolidLineConnector(color: ConstantColors.green_background);
          },
        ),
      );
  }
}
