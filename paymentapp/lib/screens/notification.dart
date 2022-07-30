import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/functions/buttons.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(ColorConstant.color19),
              borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Notifications",
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                    ),),
                   const SizedBox(width: 160,),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(onPressed: (){
                         Navigator.pop(context);
                      },
                       icon: const Icon(Icons.highlight_remove_outlined)),
                    ),
                    ],
                  ),
                  const Divider(color: Colors.grey,),
                  Column(
                    children: [
                    notificationButton('Recharge Completed', 'Your last recharge on 9847229989 of \$20 has been succesfully completed.', 'May 21 - 12:20 PM', context),
                    notificationButton('Money Recived', 'Your account ***21445 has been recieved an amount of \$1000 using upi transaction.', 'May 28 - 12:45 Pm', context),
                    notificationButton('Offer Unlocked', 'You have an unlockd offer avilable go to offer section or tap to view the offer.', 'May 20 - 06:40 Pm', context),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                        child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recent Notifications',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )
                      ),
                      ),
                      ), const SizedBox(width: 120,),
                      Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_down_circle_outlined,),
                      color: Colors.white,))
                    ],
                  )
                ],
              ),
        ))
        ),
    );
  }
}