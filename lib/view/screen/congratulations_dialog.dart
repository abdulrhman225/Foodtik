import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CongratulationsDialog extends StatelessWidget {
  const CongratulationsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          width: double.infinity,
          height: responsiveHeight(context, 287),
          "assets/images/congratulations_image.png",
        ),
        SizedBox(
          height: responsiveHeight(context, 37),
        ),
        Text(
          AppLocalizations.of(context)!.congratulations,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.sp,
            fontFamily: "Inter-VariableFont_opsz,wght",
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none
          ),
        ),

        SizedBox(height: responsiveHeight(context, 12),),

        Text(
          AppLocalizations.of(context)!.password_reset_successfully,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Inter-VariableFont_opsz,wght",
              fontSize: 24.sp,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none
          ),
        )
      ],
    );
  }
}
