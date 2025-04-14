import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/second_welcome_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widget/skip_widget.dart';
import '../widget/welcom_button_widget.dart';
import '../widget/welcome_text_section_widget.dart';

class FirstWelcomeScreen extends StatelessWidget {
  const FirstWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Image.asset(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            "assets/images/pattern.png",
          ),
          Container(
            color: Theme.of(context).colorScheme.primary,
            margin: EdgeInsets.only(top: responsiveHeight(context, 251)),
          ),
          Container(
            margin: EdgeInsets.only(top: responsiveHeight(context, 209)),
            width: double.infinity,
            height: responsiveHeight(context, 103),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.primary],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                 ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: responsiveHeight(context, 150)),
                    child: Image.asset(
                      width: responsiveWidth(context, 328),
                      height: responsiveHeight(context, 328),
                      "assets/images/order_food_pan.png",
                    ),
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 40),
                  ),
                  WelcomeTextSectionWidget(
                    title: AppLocalizations.of(context)!.first_welcome_screen_welcome_title,
                    subTitle:
                        AppLocalizations.of(context)!.first_welcome_screen_welcome_sub_title,
                  ),
                  WelcomeButtonWidget(
                    text: AppLocalizations.of(context)!.c_ontinue,
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondWelcomeScreen(),));
              
                    },
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 81),
                  ),
                  SkipWidget(index: 1)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
