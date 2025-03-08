import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitled4/controller/sign_up_cubit/sign_up_cubit.dart';
import 'package:untitled4/view/screen/congratulations_dialog.dart';
import 'package:untitled4/view/screen/login_screen.dart';
import 'package:untitled4/view/screen/otp_dialog.dart';

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
                    width: responsiveWidth(context, 343),
                    height: responsiveHeight(context, 366.3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: responsiveWidth(context, 24),
                            vertical: responsiveHeight(context, 24),
                          ),
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: responsiveWidth(context, 145),
                                height: responsiveHeight(context, 24),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: responsiveWidth(context, 24),
                                        height: responsiveHeight(context, 24),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(
                                            Icons.arrow_back,
                                            size: 14,
                                          ),
                                        )),
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
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF25AE4B),
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
                              Container(
                                width: double.infinity,
                                height: responsiveHeight(context, 105),
                                child: Column(
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
                                    Container(
                                      width: responsiveWidth(context, 263),
                                      height: responsiveHeight(context, 51),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Enter your E-mail or phone and we'll send you a link to get back into your account",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
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
                              InAppButton(text: "Send", onPress: (){
                                showDialog(context: context, builder: (context) {
                                  return OtpDialog();
                                }
                                ,);
                              })
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
