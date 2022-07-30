import 'package:flutter/material.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/functions/first_page1.dart';
import 'package:paymentapp/functions/first_page2.dart';
import 'package:paymentapp/functions/first_page3.dart';

import '../constant/textconstant.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(ColorConstant.darkgrey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Image(image: AssetImage("assets/images/logo.png")),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                   OpenPageButton(),
                   openPageText(TextConstant.text2, Color(ColorConstant.lightgrey), 15),
                   Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        function(context,
                         Color(ColorConstant.white)),
                         function(context, 
                         Color(ColorConstant.blue)),
                         function(context,
                          Color(
                          ColorConstant.blue)),
                          function(context,
                           Color(ColorConstant.blue))
                       ],
                    ),
                   )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}