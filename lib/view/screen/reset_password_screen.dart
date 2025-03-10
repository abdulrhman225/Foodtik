import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:Foodtik/controller/sign_up_cubit/sign_up_cubit.dart';
import 'package:Foodtik/view/screen/congratulations_dialog.dart';
import 'package:Foodtik/view/screen/login_screen.dart';
import 'package:Foodtik/view/screen/otp_dialog.dart';

import '../../constant_colors.dart';
import '../../responsive.dart';
import '../widget/back_ground_widget.dart';
import '../widget/in_app_button.dart';
import '../widget/text_input_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  TextEditingController emailTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGroundWidget(),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: responsiveHeight(context, 74),
                  ),
                  Text(
                    "Foodtik",
                    style: TextStyle(
                        fontFamily: "ProtestRiot",
                        fontSize: 80.sp,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 152),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: responsiveWidth(context, 24),
                        vertical: responsiveHeight(context, 24),
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: responsiveWidth(context, 44),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SingleChildScrollView(
                        child: IntrinsicHeight(
                          child: IntrinsicWidth(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: responsiveWidth(context, 145),
                                  height: responsiveHeight(context, 24),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.arrow_back,
                                          size: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: responsiveWidth(context, 6),
                                      ),
                                      Text(
                                        "Back to ",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        "Login ",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          color: ConstantColors.green_background,
                                        ),
                                      ),
                                      Text(
                                        "page?",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 24.3),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Rest Password",
                                      style: TextStyle(
                                        color: Color(0xFF111827),
                                        fontSize: 32.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: responsiveHeight(context, 12),
                                    ),
                                    Text(
                                      "Enter your E-mail or phone and we'll send you a link to get back into your account",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 24),
                                ),
                                TextInputWidget(
                                  hint: "Email",
                                  label: "Email",
                                  textEditingController:
                                      emailTextEditingController,
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 24),
                                ),
                                InAppButton(
                                    text: "Send",
                                    onPress: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return OtpDialog();
                                        },
                                      );
                                    })
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
