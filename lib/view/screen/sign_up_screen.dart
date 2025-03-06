import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitled4/controller/sign_up_cubit/sign_up_cubit.dart';
import 'package:untitled4/view/screen/login_screen.dart';

import '../../responsive.dart';
import '../widget/back_ground_widget.dart';
import '../widget/in_app_button.dart';
import '../widget/text_input_widget.dart';

class SignUpScreen extends StatelessWidget {
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
                    padding: EdgeInsets.all(10),
                    width: responsiveWidth(context, 343),
                    height: responsiveHeight(context, 661),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: responsiveHeight(context, 24),
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: responsiveWidth(context, 24),
                                height: responsiveHeight(context, 24),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
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
                                    Container(
                                      width: responsiveWidth(context, 32),
                                      height: responsiveHeight(context, 17),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                                        },
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF25AE4B),
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: responsiveHeight(context, 24),
                              ),
                              TextInputWidget(
                                hint: "Full Name",
                                label: "Full Name",
                                textEditingController:
                                    emailTextEditingController,
                              ),
                              SizedBox(
                                height: responsiveHeight(context, 16),
                              ),
                              TextInputWidget(
                                hint: "Email",
                                label: "Email",
                                textEditingController:
                                    emailTextEditingController,
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
                                child: TextInputWidget(
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
                                ),
                              ),
                              SizedBox(
                                height: responsiveHeight(context, 16),
                              ),
                              Container(
                                width: responsiveWidth(context, 295),
                                child: IntlPhoneField(
                                  initialCountryCode: contryCode,
                                  controller: phoneNumberTextEditingController,
                                  onChanged: (value) {
                                    contryCode = value.countryCode;
                                  },
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: "phoneNumber",
                                      label: Text(
                                        "poneNumber",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              ),
                              SizedBox(
                                height: responsiveHeight(context, 16),
                              ),
                              TextInputWidget(
                                hint: "password",
                                label: "password",
                                obscureText: true,
                                textEditingController:
                                    passwordTextEditingController,
                                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),
                              ),
                              SizedBox(
                                height: responsiveHeight(context, 24),
                              ),
                              InAppButton(
                                text: "Sign Up",
                                onPress: () {},
                              ),
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
