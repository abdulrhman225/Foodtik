import 'package:Foodtik/view/screen/second_welcome_screen.dart';
import 'package:Foodtik/view/screen/turn_location_on_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../responsive.dart';
import '../screen/login_screen.dart';
import '../screen/third_welcome_screen.dart';

class SkipWidget extends StatelessWidget {
  int index;

  SkipWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Text(
            AppLocalizations.of(context)!.skip,
            style: TextStyle(
              fontSize: 16.sp,
              color: Theme
                  .of(context)
                  .colorScheme
                  .secondary,
            ),
          ),
          onTap: () async {
            SharedPreferences sharedPreferences = await SharedPreferences
                .getInstance();
            sharedPreferences.setString("welcome", "welcomeScreen");
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
          },
        ),
        SizedBox(
          width: responsiveWidth(context, 87),
        ),
        Container(
          width: responsiveWidth(context, 10),
          height: responsiveHeight(context, 10),
          decoration: BoxDecoration(
              color: index == 1 ? Color(0xFF25AE4B) : Color(0xFFE6E6E6),
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: responsiveWidth(context, 18),
        ),
        Container(
          width: responsiveWidth(context, 10),
          height: responsiveHeight(context, 10),
          decoration: BoxDecoration(
              color: index == 2 ? Color(0xFF25AE4B) : Color(0xFFE6E6E6),
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: responsiveWidth(context, 18),
        ),
        Container(
          width: responsiveWidth(context, 10),
          height: responsiveHeight(context, 10),
          decoration: BoxDecoration(
              color: index == 3 ? Color(0xFF25AE4B) : Color(0xFFE6E6E6),
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: responsiveWidth(context, 109),
        ),
        InkWell(
            child: SizedBox(
              width: responsiveWidth(context, 24),
              height: responsiveHeight(context, 24),
              child: Icon(
                color: Color(0xFF25AE4B),
                Icons.arrow_forward,
              ),
            ),
            onTap: () async {
              switch(index){
                case 1:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondWelcomeScreen(),));
                  break;
                case 2:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdWelcomeScreen(),));
                  break;
                case 3:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TurnLocationOnScreen(),));
                  break;
              }
            },
        )
      ],
    );
  }
}
