import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:Foodtik/controller/sign_up_cubit/sign_up_cubit.dart';
import 'package:Foodtik/view/screen/login_screen.dart';

import '../../constant_colors.dart';
import '../../responsive.dart';
import '../widget/back_ground_widget.dart';
import '../widget/in_app_button.dart';
import '../widget/text_input_widget.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController fullNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController birthDateTextEditingController =
      TextEditingController();
  TextEditingController phoneNumberTextEditingController =
      TextEditingController();
  String contryCode = "";

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
                      child: IntrinsicWidth(
                        child: IntrinsicHeight(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
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
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 32.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 12),
                                ),
                                Container(
                                  width: responsiveWidth(context, 295),
                                  height: responsiveHeight(context, 42),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Already have an account?",
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
                                                builder: (context) =>
                                                    LoginScreen(),
                                              ));
                                        },
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: ConstantColors
                                                  .green_background,
                                              fontSize: 12.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 24),
                                ),
                                BlocBuilder<SignUpCubit, SignUpState>(
                                  builder: (context, state) {
                                    if (state is SignUpValidation) {
                                      return TextInputWidget(
                                        hint: "Full Name",
                                        label: "Full Name",
                                        errorText: state.fullNameErrorText
                                            ? "please Enter Your Full Name"
                                            : null,
                                        textEditingController:
                                            fullNameTextEditingController,
                                      );
                                    } else {
                                      return TextInputWidget(
                                        hint: "Full Name",
                                        label: "Full Name",
                                        textEditingController:
                                            fullNameTextEditingController,
                                      );
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 16),
                                ),
                                BlocBuilder<SignUpCubit, SignUpState>(
                                  builder: (context, state) {
                                    if (state is SignUpValidation) {
                                      return TextInputWidget(
                                        hint: "Email",
                                        label: "Email",
                                        errorText: state.emailErrorText
                                            ? "please Enter Valid Email"
                                            : null,
                                        textEditingController:
                                            emailTextEditingController,
                                      );
                                    } else {
                                      return TextInputWidget(
                                        hint: "Email",
                                        label: "Email",
                                        textEditingController:
                                            emailTextEditingController,
                                      );
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 16),
                                ),
                                BlocListener<SignUpCubit, SignUpState>(
                                  listener: (context, state) {
                                    if (state is SignUpUpdateDateState) {
                                      birthDateTextEditingController.text =
                                          state.date;
                                    }
                                  },
                                  child: BlocBuilder<SignUpCubit, SignUpState>(
                                    builder: (context, state) {
                                      if (state is SignUpValidation) {
                                        return TextInputWidget(
                                          hint: "Birth Of Date",
                                          label: "Birth Of Date",
                                          errorText: state.birthOfDateErrorText
                                              ? "please enter your birth date"
                                              : null,
                                          textEditingController:
                                              birthDateTextEditingController,
                                          suffixIcon: IconButton(
                                              onPressed: () {
                                                context
                                                    .read<SignUpCubit>()
                                                    .updateBirthDate(context);
                                              },
                                              icon: Icon(
                                                Icons.date_range,
                                                color: Colors.grey,
                                              )),
                                        );
                                      } else {
                                        return TextInputWidget(
                                          hint: "Birth Of Date",
                                          label: "Birth Of Date",
                                          textEditingController:
                                              birthDateTextEditingController,
                                          suffixIcon: IconButton(
                                              onPressed: () {
                                                context
                                                    .read<SignUpCubit>()
                                                    .updateBirthDate(context);
                                              },
                                              icon: Icon(
                                                Icons.date_range,
                                                color: Colors.grey,
                                              )),
                                        );
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 16),
                                ),
                                BlocBuilder<SignUpCubit, SignUpState>(
                                  builder: (context, state) {
                                    if (state is SignUpValidation) {
                                      return SizedBox(
                                        width: responsiveWidth(context, 295),
                                        child: IntlPhoneField(
                                          initialCountryCode: contryCode,
                                          controller:
                                              phoneNumberTextEditingController,
                                          onChanged: (value) {
                                            contryCode = value.countryCode;
                                          },
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                              counterText: "",
                                              errorText: state
                                                      .phoneNumberErrorText
                                                  ? "please Enter Your Phone Number"
                                                  : null,
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              hintText: "phoneNumber",
                                              label: Text(
                                                "poneNumber",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                        ),
                                      );
                                    } else {
                                      return SizedBox(
                                        width: responsiveWidth(context, 295),
                                        child: IntlPhoneField(
                                          initialCountryCode: contryCode,
                                          controller:
                                              phoneNumberTextEditingController,
                                          onChanged: (value) {
                                            contryCode = value.countryCode;
                                          },
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                              counterText: "",
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              hintText: "phoneNumber",
                                              label: Text(
                                                "poneNumber",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                        ),
                                      );
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 16),
                                ),
                                BlocBuilder<SignUpCubit, SignUpState>(
                                  builder: (context, state) {
                                    if (state is SignUpValidation) {
                                      return TextInputWidget(
                                        hint: "password",
                                        label: "password",
                                        obscureText: state.obscureText,
                                        errorText: state.passwordErrorText
                                            ? "please Enter Strong Password"
                                            : null,
                                        textEditingController:
                                            passwordTextEditingController,
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            context
                                                .read<SignUpCubit>()
                                                .changeVisibility();
                                          },
                                          icon: state.obscureText
                                              ? Icon(Icons.visibility)
                                              : Icon(
                                                  Icons.visibility_off,
                                                ),
                                        ),
                                      );
                                    } else if (state is ChangeVisibility) {
                                      return TextInputWidget(
                                        hint: "password",
                                        label: "password",
                                        textEditingController:
                                            passwordTextEditingController,
                                        obscureText: state.obscureText,
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            context
                                                .read<SignUpCubit>()
                                                .changeVisibility();
                                          },
                                          icon: state.obscureText
                                              ? Icon(Icons.visibility)
                                              : Icon(
                                                  Icons.visibility_off,
                                                ),
                                        ),
                                      );
                                    } else {
                                      return TextInputWidget(
                                        hint: "password",
                                        label: "password",
                                        textEditingController:
                                            passwordTextEditingController,
                                        obscureText: SignUpCubit().obscure,
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            context
                                                .read<SignUpCubit>()
                                                .changeVisibility();
                                          },
                                          icon: SignUpCubit().obscure
                                              ? Icon(Icons.visibility)
                                              : Icon(
                                                  Icons.visibility_off,
                                                ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: responsiveHeight(context, 24),
                                ),
                                InAppButton(
                                  text: "Sign Up",
                                  onPress: () {
                                    context
                                        .read<SignUpCubit>()
                                        .signUpValidation(
                                          email:
                                              emailTextEditingController.text,
                                          username:
                                              fullNameTextEditingController
                                                  .text,
                                          password:
                                              passwordTextEditingController
                                                  .text,
                                          birthOfDate:
                                              birthDateTextEditingController
                                                  .text,
                                          phoneNumber:
                                              phoneNumberTextEditingController
                                                  .text,
                                        );
                                  },
                                ),
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
