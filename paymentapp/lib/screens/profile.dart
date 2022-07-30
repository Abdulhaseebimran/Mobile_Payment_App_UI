import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/functions/buttons.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white), 
          child: Column(
            children: [
              Container(
                 width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 5),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                  color: Color(ColorConstant.color19),
                  borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                               AssetImage("assets/images/profile.png"),
                              radius: 40,
                            ),Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                children: [
                                  Text("Elsa",
                                  style: GoogleFonts.lato(
                                    fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white
                                  ),),const SizedBox(
                                      width: 40,
                                    ),
                                    const Icon(
                                      Icons.stars_rounded,
                                      color: Colors.orange,
                                    )
                                ],
                                ), Text(
                                  'Level 4 Ace Member',
                                  style: GoogleFonts.lato(
                                    fontSize: 14, fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  )
                                    
                                ),
                                 SizedBox(
                                  width: 150,
                                  child: LinearProgressIndicator(
                                    minHeight: 6,
                                    value: 0.8,
                                    backgroundColor: Colors.white,
                                    color: Color(ColorConstant.blue),
                                  ),
                                ),
                              ],
                            ), Align(
                              alignment: Alignment.topRight,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(3),
                                  minimumSize: Size.zero,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.highlight_remove_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '1,208',
                                  style: GoogleFonts.lato(
                                  fontSize: 20, fontWeight: FontWeight.bold, color: Color(ColorConstant.blue)
                                  ),
                                ),
                                Text(
                                  'Transactions',
                                  style: GoogleFonts.lato(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white
                                  )
                                )
                              ],
                            ), const VerticalDivider(
                              color: Colors.white,
                            ),
                           Column(
                              children: [
                                Text(
                                  '726',
                                  style: GoogleFonts.lato(
                                  fontSize: 20, fontWeight: FontWeight.bold, color: Color(ColorConstant.blue)
                                ),),
                                Text(
                                  'Points',
                                  style: GoogleFonts.lato(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white
                                )),
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.white,
                            ), Column(
                              children: [
                                Text(
                                  '8',
                                  style: GoogleFonts.lato(
                                  fontSize: 20, fontWeight: FontWeight.bold, color: Color(ColorConstant.blue)
                                ),),
                                Text(
                                  'Rank',
                                  style:  GoogleFonts.lato(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ],
                            ), const VerticalDivider(
                              color: Colors.white,
                            ),
                            profileButton(
                                'Explore', Icons.arrow_circle_right_outlined)
                          ],
                        ),
                      ), Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           profileButton('Edit Profile', Icons.manage_accounts_outlined),
                          profileButton('Settings', Icons.settings_outlined),
                          profileButton('Share', Icons.share)
                        ],
                      )
                    ],
                  ),
              ), Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Color(ColorConstant.color19),
                      borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                           profileButton2('All Transactions', Icons.receipt_long, context),
                      profileButton2('Pending Transactions', Icons.error_outline, context),
                      profileButton2('Refund Status', Icons.access_time, context),
                      profileButton2('Raise an issue', Icons.priority_high, context),
                      profileButton2('Help and Support', Icons.favorite_border, context)
                        ],
                      ),
              ), Container(
                width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Color(ColorConstant.color19),
                      borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                           profileButton2('About Us', Icons.error_outline, context),
                      profileButton2('Terms and Conditions', Icons.access_time, context),
                      profileButton2('Feedback', Icons.feedback_outlined, context),
                        ],
                      ),
              )
          ]),
        )),
      ));
}
}