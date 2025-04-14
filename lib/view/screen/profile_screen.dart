import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/change_personal_info_screen.dart';
import 'package:Foodtik/view/screen/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool pushNotification = false;
  bool promotionalNotifications = false;

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
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Account",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 12),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePersonalInfoScreen(),));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/person_setting.png"),
                            SizedBox(
                              width: responsiveWidth(context, 6),
                            ),
                            Text(
                              "Personal Information",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 12),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/language.png"),
                          SizedBox(
                            width: responsiveWidth(context, 6),
                          ),
                          Expanded(
                            child: Text(
                              "Languages",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                          Text(
                            "English",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 12),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/privacy_policy.png"),
                          SizedBox(
                            width: responsiveWidth(context, 6),
                          ),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 12),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/setting.png"),
                            SizedBox(
                              width: responsiveWidth(context, 6),
                            ),
                            Text(
                              "Settings",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 16),
              ),
              Card(
                color: Theme.of(context).colorScheme.primary,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Notification",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 12),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/bell_regular.png"),
                          SizedBox(
                            width: responsiveWidth(context, 6),
                          ),
                          Expanded(
                            child: Text(
                              "Push Notification",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                          Transform.scale(
                            scale: 0.7,
                            child: Switch(
                              value: pushNotification,
                              onChanged: (value) {
                                pushNotification = value;
                                setState(() {});
                              },
                              activeColor: ConstantColors.green_background,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 12),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/bell_regular.png"),
                          SizedBox(
                            width: responsiveWidth(context, 6),
                          ),
                          Expanded(
                            child: Text(
                              "Promotional Notifications",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                          Transform.scale(
                            scale: 0.7,
                            child: Switch(
                              value: promotionalNotifications,
                              onChanged: (value) {
                                promotionalNotifications = value;
                                setState(() {});
                              },
                              activeColor: ConstantColors.green_background,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 16),
              ),
              Card(
                color: Theme.of(context).colorScheme.primary,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "More",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 12),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/help.png"),
                          SizedBox(
                            width: responsiveWidth(context, 6),
                          ),
                          Text(
                            "Help",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 12),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/logout.png"),
                          SizedBox(
                            width: responsiveWidth(context, 6),
                          ),
                          Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
