import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../responsive.dart';

class SkipWidget extends StatelessWidget {
  int index;

  SkipWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.skip,
          style: TextStyle(
            fontSize: 16.sp,
            color: Color(0xFF455A64),
          ),
        ),
        SizedBox(
          width: responsiveWidth(context, 87),
        ),
        Container(
          width: responsiveWidth(context, 10),
          height: responsiveHeight(context, 10),
          decoration: BoxDecoration(
              color: index == 1 ? Color(0xFF25AE4B) : Color(0xFFE6E6E6),
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: responsiveWidth(context, 18),
        ),
        Container(
          width: responsiveWidth(context, 10),
          height: responsiveHeight(context, 10),
          decoration: BoxDecoration(
              color: index == 2 ? Color(0xFF25AE4B) : Color(0xFFE6E6E6),
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: responsiveWidth(context, 18),
        ),
        Container(
          width: responsiveWidth(context, 10),
          height: responsiveHeight(context, 10),
          decoration: BoxDecoration(
              color: index == 3 ? Color(0xFF25AE4B) : Color(0xFFE6E6E6),
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: responsiveWidth(context, 109),
        ),
        SizedBox(
          width: responsiveWidth(context, 24),
          height: responsiveHeight(context, 24),
          child: Icon(
            color: Color(0xFF25AE4B),
            Icons.arrow_forward,
          ),
        )
      ],
    );
  }
}
