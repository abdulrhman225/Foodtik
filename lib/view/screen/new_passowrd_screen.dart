import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/view/screen/congratulations_dialog.dart';
import 'package:Foodtik/view/screen/login_screen.dart';

import '../../constant_colors.dart';
import '../../responsive.dart';
import '../widget/back_ground_widget.dart';
import '../widget/in_app_button.dart';
import '../widget/text_input_widget.dart';

class NewPassowrdScreen extends StatelessWidget {
  TextEditingController newPasswordTextEditingController =
      TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

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
                    height: responsiveHeight(context, 24),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              )),
                        ),
                        SizedBox(
                          height: responsiveHeight(context, 24),
                        ),
                        Text(
                          "Rest Password",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 32.sp,
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(context, 12),
                        ),
                        Row(
                          children: [
                            Text(
                              "Want to try with my current password?",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: responsiveWidth(context, 6),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: ConstantColors.green_background,
                                  fontSize: 12.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: responsiveHeight(context, 24),
                        ),
                        TextInputWidget(
                          hint: "new Password",
                          label: "new Password",
                          obscureText: true,
                          textEditingController:
                              newPasswordTextEditingController,
                        ),
                        SizedBox(
                          height: responsiveHeight(context, 16),
                        ),
                        TextInputWidget(
                          hint: "confirm Password",
                          label: "confirm Password",
                          obscureText: true,
                          textEditingController:
                              confirmPasswordTextEditingController,
                        ),
                        SizedBox(
                          height: responsiveHeight(context, 24),
                        ),
                        InAppButton(
                          text: "Update Password",
                          onPress: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return CongratulationsDialog();
                              },
                            );
                          },
                        ),
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
