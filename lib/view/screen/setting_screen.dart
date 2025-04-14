import 'package:Foodtik/controller/design_cubit/design_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../responsive.dart';
import 'change_personal_info_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
          child: Column(children: [
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
                      "Setting",
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
                      onTap: () {
                        context.read<DesignCubit>().changeTheme();
                      },
                      child: Row(
                        children: [
                          Icon(Icons.design_services_outlined , color: Colors.black,),
                          SizedBox(
                            width: responsiveWidth(context, 6),
                          ),
                          Text(
                            "Change Theme",
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
          ]),
        ),
      ),
    );
  }
}
