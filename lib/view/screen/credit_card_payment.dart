import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/view/screen/finish_ording_screen.dart';
import 'package:Foodtik/view/widget/in_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../responsive.dart';

class CreditCardPayment extends StatefulWidget {
  const CreditCardPayment({super.key});

  @override
  State<CreditCardPayment> createState() => _CreditCardPaymentState();
}

class _CreditCardPaymentState extends State<CreditCardPayment> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool showBackView = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: responsiveWidth(context, 32),
            vertical: responsiveHeight(context, 30)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: responsiveHeight(context, 20),
              ),
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
                      color: Color(0xFFF5F5F5),
                    ),
                    child: Icon(
                      Icons.notifications_none,
                      size: 18,
                    )),
              ),
              Text(
                "Checkout",
                style: TextStyle(
                  color: Color(0xFF391713),
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
                    color: Colors.grey,
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
            ],
          ),
        ),
      ),
    );
  }
}
