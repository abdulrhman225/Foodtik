import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/view/screen/finish_ording_screen.dart';
import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../responsive.dart';
import 'notification_screen.dart';

class CreditCardPaymentScreen extends StatefulWidget {
  const CreditCardPaymentScreen({super.key});

  @override
  State<CreditCardPaymentScreen> createState() => _CreditCardPaymentScreenState();
}

class _CreditCardPaymentScreenState extends State<CreditCardPaymentScreen> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool showBackView = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          Container(
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
                    color:Theme.of(context).colorScheme.onSecondary
                ),
              )),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 10),
            vertical: responsiveHeight(context, 10)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Card",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 18),
              ),
              CreditCardWidget(
                bankName: "Finaci",
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardBgColor: ConstantColors.green_background,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: showBackView,
                obscureInitialCardNumber: true,
                onCreditCardWidgetChange: (p0) {},
                backgroundImage: "assets/images/back_ground_credit_card.png",
              ),
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,

                onCreditCardModelChange: (p0) {
                  cardHolderName = p0.cardHolderName;
                  cardNumber = p0.cardNumber;
                  expiryDate = p0.expiryDate;
                  cvvCode = p0.cvvCode;
                  setState(() {});
                },
                formKey: formKey,
              ),
              SizedBox(
                height: responsiveHeight(context, 21),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  "We will send you an order details to your email after the successfull payment",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 16),
              ),
              Align(
                alignment: Alignment.center,
                child: InAppButton(
                  text: "🔒 Pay for the order",
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FinishOrdingScreen(),));
                  },
                ),
              ),
              SizedBox(
                height: responsiveHeight(context, 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
