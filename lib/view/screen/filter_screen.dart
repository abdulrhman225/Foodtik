import 'package:Foodtik/view/screen/product_detail_screen.dart';
import 'package:Foodtik/view/widget/filter_catigory_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant_colors.dart';
import '../../responsive.dart';
import 'location_screen.dart';
import 'notification_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double priceRange = 0;
  double Discount = 0;
  int selectedCategory = 0;
  int selectedLocation = 0;
  int selectedDish = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 22),
            vertical: responsiveHeight(context, 22)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveWidth(context, 11),
                      vertical: responsiveHeight(context, 8),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).colorScheme.secondaryFixed,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(),));
                      },
                      child: Icon(
                        Icons.location_pin,
                        color: ConstantColors.green_background,
                        size: 15,
                      ),
                    )),
                title: Text(
                  "Current location ▾",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                subtitle: Text(
                  "Jl. Soekarno Hatta 15A Malang",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 14.sp,
                  ),
                ),
                trailing: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveWidth(context, 11),
                      vertical: responsiveHeight(context, 8),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).colorScheme.secondaryFixed,
                    ),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (context) {
                            return SizedBox(
                                height: responsiveHeight(context, 600),
                                child: NotificationScreen()
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.notifications_none,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: 15,
                      ),
                    )),
              ),
              SizedBox(
                height: responsiveHeight(context, 23),
              ),
              Text(
                "Filter",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 23),
              ),
              Text(
                "Price range",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.only(right: responsiveWidth(context, 9)),
                      padding: EdgeInsets.symmetric(
                          vertical: responsiveHeight(context, 9),
                          horizontal: responsiveWidth(context, 9)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).colorScheme.onSecondary,),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Min",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: responsiveHeight(context, 9),
                          horizontal: responsiveWidth(context, 9)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).colorScheme.onSecondary,),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Max",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$0",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: ConstantColors.green_background,
                    ),
                  ),
                  Text(
                    "\$${priceRange}B",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: ConstantColors.green_background,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 3),
              ),
              SliderTheme(
                data: SliderThemeData(
                  // here
                  trackShape: CustomTrackShape(),
                ),
                child: Slider(
                  value: priceRange,
                  onChanged: (value) {
                    priceRange = value;
                    setState(() {});
                  },
                  activeColor: ConstantColors.green_background,
                  min: 0,
                  max: 10,
                  divisions: 10,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 20),
              ),
              Text(
                "Discount",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.only(right: responsiveWidth(context, 9)),
                      padding: EdgeInsets.symmetric(
                          vertical: responsiveHeight(context, 9),
                          horizontal: responsiveWidth(context, 9)),
                      decoration: BoxDecoration(
                          border: Border.all(color:Theme.of(context).colorScheme.onSecondary,),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Min",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: responsiveHeight(context, 9),
                          horizontal: responsiveWidth(context, 9)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).colorScheme.onSecondary,),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Max",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$0",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: ConstantColors.green_background,
                    ),
                  ),
                  Text(
                    "$Discount%",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: ConstantColors.green_background,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 3),
              ),
              SliderTheme(
                data: SliderThemeData(
                  // here
                  trackShape: CustomTrackShape(),
                ),
                child: Slider(
                  value: Discount,
                  onChanged: (value) {
                    Discount = value;
                    setState(() {});
                  },
                  activeColor: ConstantColors.green_background,
                  min: 0,
                  max: 100,
                  divisions: 100,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 20),
              ),
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      selectedCategory = 0;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "Fast Food",
                      color: selectedCategory == 0
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor: selectedCategory == 0
                          ? Colors.white
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selectedCategory = 1;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "Sea Food",
                      color: selectedCategory == 1
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor: selectedCategory == 1
                          ? Colors.white
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selectedCategory = 2;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "Desert",
                      color: selectedCategory == 2
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor: selectedCategory == 2
                          ? Colors.white
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 32),
              ),
              Text(
                "Location",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      selectedLocation = 0;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "1K",
                      color: selectedLocation == 0
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor: selectedLocation == 0
                          ? Colors.white
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selectedLocation = 1;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "5K",
                      color: selectedLocation == 1
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor: selectedLocation == 1
                          ? Colors.white
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selectedLocation = 2;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "10K",
                      color: selectedLocation == 2
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor: selectedLocation == 2
                          ? Colors.white
                          : Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 32),
              ),
              Text(
                "Dish",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      selectedDish = 0;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "Tuna Tartare",
                      color: selectedDish == 0
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor:
                          selectedDish == 0 ? Colors.white : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selectedDish = 1;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "Spicy Crab Cakes",
                      color: selectedDish == 1
                          ? ConstantColors.green_background
                          :Theme.of(context).colorScheme.secondaryFixed,
                      textColor:
                          selectedDish == 1 ? Colors.white : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selectedDish = 2;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "Seafood Paella",
                      color: selectedDish == 2
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor:
                          selectedDish == 2 ? Colors.white : Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      selectedDish = 3;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "Clam Chowder",
                      color: selectedDish == 3
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor:
                          selectedDish == 3 ? Colors.white : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selectedDish = 4;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "Miso-Glazed Cod",
                      color: selectedDish == 4
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor:
                          selectedDish == 4 ? Colors.white : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selectedDish = 5;
                      setState(() {});
                    },
                    child: FilterCatigoryWidget(
                      text: "Lobster Thermidor",
                      color: selectedDish == 5
                          ? ConstantColors.green_background
                          : Theme.of(context).colorScheme.secondaryFixed,
                      textColor:
                          selectedDish == 5 ? Colors.white : Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
