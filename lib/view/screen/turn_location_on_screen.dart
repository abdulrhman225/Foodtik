import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widget/welcom_button_widget.dart';
import '../widget/welcome_text_section_widget.dart';

class TurnLocationOnScreen extends StatelessWidget {
  const TurnLocationOnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/maps.png",
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: responsiveHeight(context, 251)),
            width: responsiveWidth(context, 434),
            height: responsiveHeight(context, 681),
          ),
          Container(
            margin: EdgeInsets.only(top: responsiveHeight(context, 251)),
            width: double.infinity,
            height: responsiveHeight(context, 103),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.67, 0.1]),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: responsiveHeight(context, 254),
                  ),
                  Image.asset(
                    width: responsiveWidth(context, 328),
                    height: responsiveHeight(context, 219),
                    "assets/images/take_away_cuate.png",
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 40),
                  ),
                  WelcomeTextSectionWidget(
                    fontWeight: FontWeight.w700,
                    title: AppLocalizations.of(context)!.turn_location_on_screen_title,
                    subTitle:
                    AppLocalizations.of(context)!.turn_location_on_screen_sub_title,
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 14),
                  ),
                  WelcomeButtonWidget(
                    text: AppLocalizations.of(context)!.yes_turn_it_on,
                    onPress: () {
                      _determinePosition(context);
                    },
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 14),
                  ),
                  Container(
                    width: responsiveWidth(context, 307),
                    decoration: BoxDecoration(
                      color: Color(0xFFC2C2C2),
                      borderRadius: BorderRadius.circular(69),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                        sharedPreferences.setString("welcome", "welcomeScreen");
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
              
                      },
                      child: Text(
                        AppLocalizations.of(context)!.cancel,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<Position> _determinePosition(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        sharedPreferences.setString("welcome", "welcomeScreen");
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.setString("welcome", "welcomeScreen");
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("welcome", "welcomeScreen");
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    return await Geolocator.getCurrentPosition();
  }
}
