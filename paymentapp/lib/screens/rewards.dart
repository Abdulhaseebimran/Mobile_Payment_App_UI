import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/constant/textconstant.dart';
import 'package:paymentapp/functions/buttons.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
               padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color:  Color(ColorConstant.color19),
                  borderRadius: BorderRadius.circular(26)),
                  child: Center(
                    child: Column(
                      children: [
                        Text("Casbacks earned",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          // letterSpacing: 1,
                        ),),
                        const SizedBox(height: 10,),
                        Text(TextConstant.text57,
                        style: GoogleFonts.lato(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(ColorConstant.color27)
                        ),),
                      const SizedBox(height: 10,),
                      Text("+ 88 Rs This month",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(ColorConstant.color27),
                      ),),
                      const SizedBox(height: 10,),
                      TextButton(
                        style: TextButton.styleFrom(
                         primary: Colors.white,
                        backgroundColor: const Color.fromARGB(255, 79, 84, 97),
                        shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),) ,
                        onPressed: (){
          
                        }, child: Text("View your cashback history",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),)),
                      ],
                    ),
                  ),
            ),const SizedBox(height: 10,),
            Text(" Scrachcards won",
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
           const SizedBox(height: 10,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              rewardsCard(),
              rewardsCard(),
              rewardsCard(),
            ],
           ),
           const SizedBox(height: 15,),
           Text(" Collect Rewards",
           textAlign: TextAlign.left,
            style: GoogleFonts.lato(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          const SizedBox(height: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              collect('Flat 50% off On food Delivery', 
              'On orders above 99 on Swaggy, Somato', "assets/images/rewards1.png",Color(ColorConstant.color18)),
             const SizedBox(height: 15,),
             collect('20% Cashback On Amason', 'Up to Rs 150 Minimum Order \$100',
              "assets/images/rewards2.png", Color(ColorConstant.color14)),
              ],
            )
          ],
        ),
      ),
    );
  }
}