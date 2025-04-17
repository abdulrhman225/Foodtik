import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ConfirmDialog extends StatelessWidget {

  VoidCallback onPress;

  ConfirmDialog({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: responsiveHeight(context, 24),
              horizontal: responsiveWidth(context, 24)),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12) , color: Theme.of(context).colorScheme.inversePrimary),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.remove_from_favorites_confirmation,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                SizedBox(height: responsiveHeight(context, 24),),
                InAppButton(text: AppLocalizations.of(context)!.yes, onPress: onPress)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
