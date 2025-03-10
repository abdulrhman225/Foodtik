import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/reset_password_screen.dart';
import 'package:Foodtik/view/screen/sign_up_screen.dart';

import '../widget/back_ground_widget.dart';
import '../widget/in_app_button.dart';
import '../widget/text_input_widget.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

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
                        vertical: responsiveHeight(context, 24)),
                    margin: EdgeInsets.symmetric(
                      horizontal: responsiveWidth(context, 44),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: IntrinsicWidth(
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: responsiveHeight(context, 24),
                            ),
                            Text(
                              "Login",
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don’t have an account?",
                                  style: TextStyle(
                                    color: Color(0xFF6C7278),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
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
                                          builder: (context) => SignUpScreen(),
                                        ));
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: ConstantColors.green_background,
                                        fontSize: 12.sp),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: responsiveHeight(context, 10),
                            ),
                            TextInputWidget(
                              hint: "Email",
                              label: "Email",
                              textEditingController: emailTextEditingController,
                            ),
                            SizedBox(
                              height: responsiveHeight(context, 16),
                            ),
                            TextInputWidget(
                              hint: "Password",
                              label: "Password",
                              textEditingController:
                                  passwordTextEditingController,
                            ),
                            SizedBox(
                              height: responsiveHeight(context, 16),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: responsiveWidth(context, 19),
                                  height: responsiveHeight(context, 19),
                                  child: Checkbox(
                                    value: false,
                                    onChanged: (value) {},
                                  ),
                                ),
                                SizedBox(
                                  width: responsiveWidth(context, 5),
                                ),
                                Text(
                                  "Remember me",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: Color(0xFF6C7278),
                                  ),
                                ),
                                SizedBox(
                                  width: responsiveWidth(context, 81),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ResetPasswordScreen(),
                                        ));
                                  },
                                  child: Text(
                                    "Forgot Password ?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: ConstantColors.green_background,
                                        fontSize: 12.sp),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: responsiveHeight(context, 24),
                            ),
                            InAppButton(
                              text: "Log In",
                              onPress: () {},
                            ),
                            SizedBox(
                              height: responsiveHeight(context, 24),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: responsiveWidth(context, 124),
                                  child: Divider(),
                                ),
                                SizedBox(
                                  width: responsiveWidth(context, 16),
                                ),
                                Text(
                                  "Or",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: responsiveWidth(context, 16),
                                ),
                                Container(
                                  width: responsiveWidth(context, 124),
                                  child: Divider(),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: responsiveHeight(context, 24),
                            ),
                            Container(
                              width: responsiveWidth(context, 295),
                              height: responsiveHeight(context, 48),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: ListTile(
                                minTileHeight: responsiveHeight(context, 48),
                                onTap: () {},
                                leading: Image.asset(
                                    width: responsiveWidth(context, 18),
                                    height: responsiveHeight(context, 18),
                                    "assets/images/google.png"),
                                title: Text("Continue With Gmail",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(context, 15),
                            ),
                            Container(
                              width: responsiveWidth(context, 295),
                              height: responsiveHeight(context, 48),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: ListTile(
                                minTileHeight: responsiveHeight(context, 48),
                                onTap: () {},
                                leading: Image.asset(
                                    width: responsiveWidth(context, 18),
                                    height: responsiveHeight(context, 18),
                                    "assets/images/facebook.png"),
                                title: Text(
                                  "Continue With Facebook",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsiveHeight(context, 15),
                            ),
                            Container(
                              width: responsiveWidth(context, 295),
                              height: responsiveHeight(context, 48),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: ListTile(
                                minTileHeight: responsiveHeight(context, 48),
                                onTap: () {},
                                leading: Image.asset(
                                    width: responsiveWidth(context, 18),
                                    height: responsiveHeight(context, 18),
                                    "assets/images/apple_logo.png"),
                                title: Text(
                                  "Continue With Apple",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
