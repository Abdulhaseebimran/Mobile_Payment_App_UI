import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/constant/textconstant.dart';
import 'package:paymentapp/functions/buttons.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
             offersButton("assets/images/note3.png", TextConstant.text49, 'Use Code FIRST20', 'Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply', Color(ColorConstant.color19)),
             offersButton("assets/images/note2.png", TextConstant.text50, 'Use Code FIRSDTHT20', 'Get 20 % Instant cashback upto Rs 50 on your first DTH recharge. T&C apply', Color(ColorConstant.color25)),
             offersButton("assets/images/note4.png", TextConstant.text51, 'Use Code FIRST20', 'Shop on Flipcart using our payment system to get upto 50% cashback . T&C appply', Color(ColorConstant.color26)),
             offersButton("assets/images/note5.png", 'Money Transfer Offer', 'Use Code FIRSDTHT20', 'Get a scratch card with assuerd casbck and coupons on Money Transfer of Rs 500 or more . T&C apply', Color(ColorConstant.color19)),
             offersButton("assets/images/note1.png", TextConstant.text52, 'Use Code FIRST20', 'Get instant discount on flat 50 Rs on Flight ticket booking. T&C apply', Color(ColorConstant.color25))
          ],
        ),
      ),
    );
  }
}