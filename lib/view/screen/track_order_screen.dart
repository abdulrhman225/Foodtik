import 'package:Foodtik/view/screen/chat_screen.dart';
import 'package:Foodtik/view/screen/order_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constant_colors.dart';
import '../../responsive.dart';
import '../widget/find_location_text_input_widget.dart';

class TrackOrderScreen extends StatelessWidget {
  TextEditingController searchLocationTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  32.0426142774392,
                  36.09468302784314,
                ),
                zoom: 15,
              ),
            ),
            Positioned(
              top: 70,
              left: 20,
              child: Row(
                children: [
                  InkWell(
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 13),
                  ),
                  FindLocationTextInputWidget(
                    hint: "",
                    label: AppLocalizations.of(context)!.find_your_location,
                    prefixIcon: Icon(
                      Icons.search,
                      color: ConstantColors.green_background,
                    ),
                    textEditingController: searchLocationTextEditingController,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(
              horizontal: responsiveWidth(context, 20),
              vertical: responsiveHeight(context, 20)),
          height: responsiveHeight(context, 250),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.on_the_way,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailScreen(),));
                      },
                      child: Text(
                        AppLocalizations.of(context)!.all_details,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: ConstantColors.green_background,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: responsiveHeight(context, 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/driver_phone.png"),
                    SizedBox(
                      width: responsiveWidth(context, 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.your_delivery_hero,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(context, 12),
                        ),
                        Row(
                          children: [
                            Text(
                              "Aleksandr V.",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                            SizedBox(
                              width: responsiveWidth(context, 11),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade400,
                            ),
                            SizedBox(
                              width: responsiveWidth(context, 4),
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 60),
                    ),
                    Image.asset("assets/images/Icon_phone.png"),
                    SizedBox(
                      width: responsiveWidth(context, 12),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
                      },
                      child: Image.asset("assets/images/Icon_chat.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: responsiveHeight(context, 27),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: responsiveWidth(context, 8),
                          right: responsiveWidth(context, 8)),
                      child: Text(
                        AppLocalizations.of(context)!.your_location,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: responsiveHeight(context, 5),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: ConstantColors.green_background,
                        ),
                        SizedBox(
                          width: responsiveWidth(context, 4),
                        ),
                        Text(
                          "123 Al-Madina Street, Abdali, Amman, Jordan",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: responsiveHeight(context, 24),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
