import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HistoryScreenWithoutData extends StatelessWidget {
  const HistoryScreenWithoutData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/empty_amico.png",
              width: responsiveWidth(context, 282),
              height: responsiveHeight(context, 282),
            ),
            SizedBox(
              height: responsiveHeight(context, 51),
            ),
            Text(
              AppLocalizations.of(context)!.history_empty,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: responsiveHeight(context, 12),
            ),
            Text(
              AppLocalizations.of(context)!.history_empty_message,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
