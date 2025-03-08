import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled4/responsive.dart';
import 'package:untitled4/view/screen/congratulations_dialog.dart';
import 'package:untitled4/view/screen/new_passowrd_screen.dart';
import 'package:untitled4/view/widget/in_app_button.dart';

class OtpDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: responsiveWidth(context, 343),
          height: responsiveHeight(context, 389),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: responsiveWidth(context, 24),
                vertical: responsiveHeight(context, 24),
              ),
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      width: responsiveWidth(context, 153),
                      height: responsiveHeight(context, 153),
                      "assets/images/mail_image.png",
                    ),
                    SizedBox(
                      height: responsiveHeight(context, 12),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 263),
                      height: responsiveHeight(context, 34),
                      child: Text(
                        textAlign: TextAlign.center,
                        "A 4-digit code has been sent to your email. Please enter it to verify.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          decoration: TextDecoration.none,
                          fontFamily: "Inter-VariableFont_opsz,wght",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: responsiveHeight(context, 24),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 250),
                      height: responsiveHeight(context, 46),
                      child: PinCodeTextField(
                        appContext: context,
                        textStyle: TextStyle(
                          color: Color(0xFF1A1C1E),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        length: 4,
                        // OTP length
                        onChanged: (value) {
                          print(value);
                        },
                        pinTheme: PinTheme(
                          inactiveColor: Colors.grey,
                          activeColor: Colors.grey,
                          selectedColor: Colors.grey,
                          shape: PinCodeFieldShape.box,
                          // Box shape for OTP fields
                          borderRadius: BorderRadius.circular(10),
                          fieldHeight: responsiveHeight(context, 46),
                          fieldWidth: responsiveWidth(context, 50.5),
                          activeFillColor: Colors.white,
                          inactiveFillColor: Colors.white,
                          selectedFillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.number, // Numeric keyboard
                      ),
                    ),
                    SizedBox(
                      height: responsiveHeight(context, 24),
                    ),
                    InAppButton(
                        text: "Verify",
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
          ]),
        ),
      ),
    );
  }
}
