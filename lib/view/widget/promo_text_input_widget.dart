import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/constant_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:Foodtik/responsive.dart';

class PromoTextInputWidget extends StatelessWidget {
  String hint;
  String label;
  String? errorText;
  TextEditingController textEditingController;
  bool obscureText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextInputType? keyboardType;
  int? maxLine;
  bool? enabled;

  PromoTextInputWidget(
      {required this.hint,
      required this.label,
      this.errorText,
      required this.textEditingController,
      this.obscureText = false,
      this.enabled = true,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType,
      this.maxLine = 1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: responsiveWidth(context, 270),
          child: TextField(
            keyboardType: keyboardType,
            maxLines: maxLine,
            controller: textEditingController,
            obscureText: obscureText,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              hintText: hint,
              hintStyle: TextStyle(
                  fontSize: 12.sp,
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.w700),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              label: Text(
                label,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontWeight: FontWeight.w700),
              ),
              errorText: errorText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: responsiveWidth(context, 80),
          padding: EdgeInsets.symmetric(
              vertical: responsiveHeight(context, 23),
              horizontal: responsiveWidth(context, 23)),
          decoration: BoxDecoration(
            color: ConstantColors.green_background,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: InkWell(
            child: Text(
              AppLocalizations.of(context)!.add,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}
