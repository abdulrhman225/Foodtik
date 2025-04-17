import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/turn_location_on_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widget/skip_widget.dart';
import '../widget/welcom_button_widget.dart';
import '../widget/welcome_text_section_widget.dart';

class ThirdWelcomeScreen extends StatelessWidget {
  const ThirdWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Stack(
        children: [
          Image.asset(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            "assets/images/pattern.png",
          ),
          Container(
            color: Theme.of(context).colorScheme.inversePrimary,
            margin: EdgeInsets.only(top: responsiveHeight(context, 251)),
            width: responsiveWidth(context, 434),
            height: responsiveHeight(context, 681),
          ),
          Container(
            margin: EdgeInsets.only(top: responsiveHeight(context, 209)),
            width: double.infinity,
            height: responsiveHeight(context, 103),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Theme.of(context).colorScheme.inversePrimary, Theme.of(context).colorScheme.inversePrimary],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.67, 0.1]),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: responsiveHeight(context, 254),),
                  Image.asset(
                    width: responsiveWidth(context, 328),
                    height: responsiveHeight(context, 219),
                    "assets/images/take_away_cuate.png",
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 40),
                  ),
                  WelcomeTextSectionWidget(
                    title: AppLocalizations.of(context)!.third_welcome_screen_welcome_title,
                    subTitle:
                    AppLocalizations.of(context)!.third_welcome_screen_welcome_sub_title,
                  ),
                  WelcomeButtonWidget(
                    text: AppLocalizations.of(context)!.c_ontinue,
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TurnLocationOnScreen(),));
              
                    },
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 81),
                  ),
                  SkipWidget(index: 3),
                  SizedBox(height: responsiveHeight(context, 15),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
