import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/credit_card_payment_screen.dart';
import 'package:Foodtik/view/screen/finish_ording_screen.dart';
import 'package:Foodtik/view/widget/promo_text_input_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:Foodtik/view/widget/total_price_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'notification_screen.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  TextEditingController promoTextEditingController = TextEditingController();

  List<String> options = ["card", "cash"];

  String? selectedWay;
  String? selectCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 32),
            vertical: responsiveHeight(context, 30)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: responsiveHeight(context, 20),),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: responsiveWidth(context, 7)),
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
                        size: 18,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    )),
              ),
              Text(
                AppLocalizations.of(context)!.checkout,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 18),
              ),
              Text(
                "${AppLocalizations.of(context)!.pay_with}:",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 18),
              ),
              Row(
                children: [
                  Icon(
                    Icons.filter_tilt_shift,
                    color: ConstantColors.green_background,
                    size: 10,
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 16),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "88 Zurab Gorgiladze St",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 4),
                      ),
                      Text(
                        "Georgia, Batumi",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 8),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: ConstantColors.green_background,
                    size: 10,
                  ),
                  SizedBox(
                    width: responsiveWidth(context, 16),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "5 Noe Zhordania St",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: responsiveHeight(context, 4),
                      ),
                      Row(
                        children: [
                          Text(
                            "Georgia, Batumi",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: responsiveWidth(context, 175),
                          ),
                          InkWell(
                            child: Text(
                              AppLocalizations.of(context)!.change,
                              style: TextStyle(
                                color: ConstantColors.green_background,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: responsiveHeight(context, 32),
              ),
              Text(
                AppLocalizations.of(context)!.promo_code,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 16),
              ),
              PromoTextInputWidget(
                hint: "",
                label: AppLocalizations.of(context)!.enter_your_promo,
                textEditingController: promoTextEditingController,
              ),
              SizedBox(
                height: responsiveHeight(context, 27),
              ),
              Text(
                AppLocalizations.of(context)!.pay_with,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 16),
              ),
              Row(children: [
                Radio<String>(
                  value: AppLocalizations.of(context)!.card_type,
                  activeColor: ConstantColors.green_background,
                  groupValue: selectedWay,
                  onChanged: (value) {
                    selectedWay = value;
                    setState(() {});
                  },
                ),
                Text(
                  "card",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: responsiveWidth(context, 20),
                ),
                Radio<String>(
                  value: "cash",
                  groupValue: selectedWay,
                  activeColor: ConstantColors.green_background,
                  onChanged: (value) {
                    selectedWay = value;
                    setState(() {});
                  },
                ),
                Text(
                  "cash",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
              selectedWay == "card"
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: responsiveHeight(context, 27),
                        ),
                        Text(
                          AppLocalizations.of(context)!.card_type,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(context, 16),
                        ),
                        Row(children: [
                          Radio<String>(
                            value: "card",
                            focusColor: Theme.of(context).colorScheme.onSecondary,
                            activeColor: ConstantColors.green_background,
                            groupValue: selectCard,
                            onChanged: (value) {
                              selectCard = value;
                              setState(() {});
                            },
                          ),
                          Image.asset("assets/images/mastercard.png"),
                          SizedBox(
                            width: responsiveWidth(context, 20),
                          ),
                          Radio<String>(
                            value: "cash",
                            groupValue: selectCard,
                            activeColor: ConstantColors.green_background,
                            onChanged: (value) {
                              selectCard = value;
                              setState(() {});
                            },
                          ),
                          Image.asset("assets/images/visa.png"),
                        ]),
                      ],
                    )
                  : SizedBox(),
              TotalPriceCardWidget(onPress: (){
                if(selectedWay == "card"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreditCardPaymentScreen(),));
                }else if(selectedWay == "cash"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FinishOrdingScreen(),));
                }
              }),
              SizedBox(
                width: responsiveWidth(context, 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
