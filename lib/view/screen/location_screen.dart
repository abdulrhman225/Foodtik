import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/widget/find_location_text_input_widget.dart';
import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:Foodtik/view/widget/search_text_input_widget.dart';
import 'package:Foodtik/view/widget/text_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Position? position;

  TextEditingController searchLocationTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Marker> markers = [
      Marker(
        markerId: MarkerId("1"),
        position: LatLng(
          position?.latitude ?? 32.0426142774392,
          position?.longitude ?? 36.09468302784314,
        ),
      )
    ];
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            markers: markers.toSet(),
            initialCameraPosition: CameraPosition(
                target:LatLng(
                  32.0426142774392,
                  36.09468302784314,
                ),
                zoom: 15),
          ),
          Positioned(
            top: 70,
            left: 20,
            child: Row(
              children: [
                InkWell(
                  onTap:(){
                    Navigator.pop(context);
                  },
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
                  label: "Find your Location",
                  prefixIcon: Icon(
                    Icons.search,
                    color: ConstantColors.green_background,
                  ),
                  textEditingController: searchLocationTextEditingController,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 41),
                  vertical: responsiveHeight(context, 41)),
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 24),
                  vertical: responsiveHeight(context, 24)),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: responsiveWidth(context, 8),
                        right: responsiveWidth(context, 8)),
                    child: Text(
                      "your location",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey,
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
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: responsiveHeight(context, 24),
                  ),
                  InAppButton(text: "Set Location", onPress: () async {
                      position = await Geolocator.getCurrentPosition();
                      setState(() {});

                  })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
