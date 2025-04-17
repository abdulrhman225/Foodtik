import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/widget/clint_message.dart';
import 'package:Foodtik/view/widget/driver_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constant_colors.dart';

class ChatScreen extends StatelessWidget {
  TextEditingController chatTextEditingController = TextEditingController();
  List chat = [
    {"type_user": "clint", "message": "hello where are you now"},
    {"type_user": "clint", "message": "are you close"},
    {"type_user": "driver", "message": "yes give me a 5 minute"},
    {
      "type_user": "driver",
      "message": "i am in front of you house come to get your order"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          AppLocalizations.of(context)!.chat,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 24),
            vertical: responsiveHeight(context, 24)),
        child: Stack(
          children: [ListView.builder(
            itemBuilder: (context, index) {
              if (chat[index]["type_user"] == "clint") {
                return Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: ClintMessage(clint_message: chat[index]["message"]),
                );
              } else {
                return Align(
                  alignment: AlignmentDirectional.topStart,
                  child: DriverMessage(driver_message: chat[index]["message"]),
                );
              }
            },
            itemCount: chat.length,
          ),
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: TextField(
                controller: chatTextEditingController,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  suffixIcon: Icon(Icons.send_rounded, color: ConstantColors.green_background,),
                  label: Text(
                    AppLocalizations.of(context)!.write_your_message,
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontWeight: FontWeight.w700),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.onSecondary,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
