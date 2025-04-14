import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:Foodtik/view/screen/new_passowrd_screen.dart';
import 'package:Foodtik/view/widget/in_app_button.dart';

class OtpDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 24),
            vertical: responsiveHeight(context, 24),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 44),
          ),
          decoration: BoxDecoration(
            color: Theme.of(context)
                .colorScheme
                .primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SingleChildScrollView(
            child: IntrinsicHeight(
              child: IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      width: responsiveWidth(context, 153),
                      height: responsiveHeight(context, 153),
                      fit: BoxFit.cover,
                      "assets/images/mail_image.png",
                    ),
                    SizedBox(
                      height: responsiveHeight(context, 12),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      AppLocalizations.of(context)!.otp_text,
                      style: TextStyle(
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondary,
                        fontSize: 12.sp,
                        decoration: TextDecoration.none,
                        fontFamily: "Inter-VariableFont_opsz,wght",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: responsiveHeight(context, 24),
                    ),
                    PinCodeTextField(
                      appContext: context,
                      textStyle: TextStyle(
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondary,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      length: 4,
                      // OTP length
                      onChanged: (value) {
                        print(value);
                      },
                      pinTheme: PinTheme(
                        inactiveColor: Theme.of(context)
                            .colorScheme
                            .onSecondary,
                        activeColor: Theme.of(context)
                            .colorScheme
                            .onSecondary,
                        selectedColor: Theme.of(context)
                            .colorScheme
                            .onSecondary,
                        shape: PinCodeFieldShape.box,
                        // Box shape for OTP fields
                        borderRadius: BorderRadius.circular(10),
                        activeFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        selectedFillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.number, // Numeric keyboard
                    ),
                    SizedBox(
                      height: responsiveHeight(context, 24),
                    ),
                    InAppButton(
                        text: AppLocalizations.of(context)!.verify,
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewPassowrdScreen(),
                              ));
                        })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
