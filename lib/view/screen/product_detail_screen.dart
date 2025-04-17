import 'package:Foodtik/view/screen/filter_screen.dart';
import 'package:Foodtik/view/screen/location_screen.dart';
import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constant_colors.dart';
import '../../responsive.dart';
import '../widget/search_text_input_widget.dart';
import 'notification_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  TextEditingController searchTextEditingController = TextEditingController();
  double valueOfslider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: responsiveWidth(context, 22),
              vertical: responsiveHeight(context, 22)),
          child: Column(
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LocationScreen(),
                            ));
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
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        builder: (context) {
                          return SizedBox(
                              height: responsiveHeight(context, 600),
                              child: NotificationScreen());
                        },
                      );
                    },
                    child: Icon(
                      Icons.notifications_none,
                      color: Theme.of(context).colorScheme.onSecondary,
                      size: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 22),
              ),
              SearchTextInputWidget(
                hint: AppLocalizations.of(context)!.search,
                textEditingController: searchTextEditingController,
                prefixIcon:  Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                suffixIcon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FilterScreen(),
                        ));
                  },
                  child: Container(
                    width: responsiveWidth(context, 15),
                    height: responsiveHeight(context, 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: AssetImage("assets/images/equalizer.png"),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 30),
              ),
              Container(
                width: responsiveWidth(context, 370),
                height: responsiveHeight(context, 203),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/delicious_tasty_flying_burger_table_cheese_burger_with.png"),
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Cheeseburger Wendy's Burger",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 8),
              ),
              Row(
                children: [
                  StarRating(
                    starCount: 5,
                    rating: 4.5,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 3),
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 3),
                  ),
                  Text(
                    "(89 reviews)",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 8),
              ),
              Row(
                children: [
                  Text(
                    "\$7.99",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: ConstantColors.green_background,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 8),
                  ),
                  Text(
                    "\$9.5",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Text(
                "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: responsiveHeight(context, 24),
              ),
              Row(children: [
                Text(
                  AppLocalizations.of(context)!.spicy,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: responsiveWidth(context, 221),
                ),
                Text(
                  AppLocalizations.of(context)!.quantity,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
              ]),
              SizedBox(
                height: responsiveHeight(context, 15),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Row(
                  children: [
                    SizedBox(
                      width: responsiveWidth(context, 7),
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        // here
                        trackShape: CustomTrackShape(),
                      ),
                      child: SizedBox(
                        width: responsiveWidth(context, 169),
                        child: Slider.adaptive(
                          min: 0,
                          max: 10,
                          divisions: 10,
                          value: valueOfslider,
                          onChanged: (value) {
                            valueOfslider = value;
                            setState(() {});
                          },
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 70),
                    ),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: responsiveWidth(context, 15),
                            vertical: responsiveHeight(context, 16)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: ConstantColors.green_background)),
                        child: Icon(
                          Icons.minimize,
                          color: ConstantColors.green_background,
                          size: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 20),
                    ),
                    Text(
                      "3",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 20),
                    ),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: responsiveWidth(context, 15),
                            vertical: responsiveHeight(context, 16)),
                        decoration: BoxDecoration(
                            color: ConstantColors.green_background,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: ConstantColors.green_background)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 10,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 7),
              ),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.mild,
                    style: TextStyle(
                        color: ConstantColors.green_background,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 122),
                  ),
                  Text(
                    AppLocalizations.of(context)!.hot,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 63),
              ),
              InAppButton(text: AppLocalizations.of(context)!.add_to_cart, onPress: () {}),
              SizedBox(
                height: responsiveHeight(context, 10),
              )
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
