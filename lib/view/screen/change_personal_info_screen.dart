import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant_colors.dart';
import '../../responsive.dart';
import '../widget/text_input_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChangePersonalInfoScreen extends StatelessWidget {
  TextEditingController fullNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController phoneNumberTextEditingController =
      TextEditingController();
  TextEditingController addressTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
              horizontal: responsiveWidth(context, 24),
              vertical: responsiveHeight(context, 24)),
          child: Column(
            children: [
              Container(
                width: responsiveWidth(context, 84),
                height: responsiveHeight(context, 84),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/person.png"))),
              ),
              SizedBox(
                height: responsiveHeight(context, 12),
              ),
              Text(
                "Ahmad Daboor",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Text(
                "ahmad1709@gmail.com",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Card(
                color: Theme.of(context).colorScheme.primary,
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInputWidget(
                        hint: AppLocalizations.of(context)!.full_name,
                        label: AppLocalizations.of(context)!.full_name,
                        textEditingController: fullNameTextEditingController,
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 16),
                      ),
                      TextInputWidget(
                        hint: AppLocalizations.of(context)!.email,
                        label: AppLocalizations.of(context)!.email,
                        textEditingController: emailTextEditingController,
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 16),
                      ),
                      TextInputWidget(
                        hint: AppLocalizations.of(context)!.phone_number,
                        label: AppLocalizations.of(context)!.phone_number,
                        textEditingController: phoneNumberTextEditingController,
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 16),
                      ),
                      TextInputWidget(
                        hint: AppLocalizations.of(context)!
                            .password,
                        label: AppLocalizations.of(context)!
                            .password,
                        textEditingController:
                        passwordTextEditingController,
                        obscureText: true,
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 16),
                      ),
                      TextInputWidget(
                        hint: "Address",
                        label: "Address",
                        textEditingController: addressTextEditingController,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 42),
              ),
              InAppButton(text: "Update", onPress: (){})
            ],
          ),
        ),
      ),
    );
  }
}
